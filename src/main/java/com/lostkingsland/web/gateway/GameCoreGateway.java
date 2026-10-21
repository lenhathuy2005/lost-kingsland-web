package com.lostkingsland.web.gateway;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lostkingsland.web.config.WebProperties;
import org.springframework.stereotype.Service;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.LinkedHashMap;
import java.util.Map;

@Service
public class GameCoreGateway {
    private final WebProperties properties;
    private final ObjectMapper objectMapper;
    private final HttpClient http = HttpClient.newBuilder().connectTimeout(Duration.ofSeconds(3)).build();

    public GameCoreGateway(WebProperties properties, ObjectMapper objectMapper) {
        this.properties = properties;
        this.objectMapper = objectMapper;
    }

    public Object invokeWheel(String action,Map<String,Object> request) {
        String token=properties.getGameCoreServiceToken();
        if(!properties.gameCoreConfigured()||token==null||token.length()<32)
            throw new org.springframework.web.server.ResponseStatusException(org.springframework.http.HttpStatus.SERVICE_UNAVAILABLE,"Cổng game chưa được cấu hình.");
        try {
            URI endpoint=URI.create(properties.getGameCoreBaseUrl().replaceAll("/$","")+"/web/wheel/"+action);
            if(!"https".equals(endpoint.getScheme())&&!("http".equals(endpoint.getScheme())&&java.util.Set.of("localhost","127.0.0.1","[::1]").contains(endpoint.getHost())))
                throw new IllegalStateException("Game gateway requires HTTPS outside localhost");
            var httpRequest=HttpRequest.newBuilder(endpoint).timeout(Duration.ofSeconds(20))
                .header("Authorization","Bearer "+token).header("Content-Type","application/json")
                .POST(HttpRequest.BodyPublishers.ofString(objectMapper.writeValueAsString(request))).build();
            var response=http.send(httpRequest,HttpResponse.BodyHandlers.ofString());
            if(response.statusCode()/100!=2)throw new org.springframework.web.server.ResponseStatusException(
                org.springframework.http.HttpStatus.valueOf(response.statusCode()),"Không thể thực hiện. Kiểm tra Gem hoặc tải lại ván.");
            return objectMapper.readValue(response.body(),Object.class);
        }catch(org.springframework.web.server.ResponseStatusException failure){throw failure;}
        catch(Exception failure){if(failure instanceof InterruptedException)Thread.currentThread().interrupt();throw new org.springframework.web.server.ResponseStatusException(org.springframework.http.HttpStatus.BAD_GATEWAY,"Kết nối gián đoạn. Thử lại cùng thao tác để khôi phục ván.");}
    }

    public Map<String,Object> invoke(String action, String playerId, Object payload) {
        if (!properties.gameCoreMutationsConfigured()) {
            return Map.of(
                    "ok", false,
                    "status", "CORE_API_NOT_CONFIGURED",
                    "message", "Web không ghi trực tiếp gameplay DB. Hãy cấu hình GAME_CORE_BASE_URL để action đi qua authoritative Game Core API."
            );
        }
        try {
            String base = properties.getGameCoreBaseUrl().replaceAll("/$", "");
            URI endpoint = URI.create(base + "/web/actions/" + action);
            if (!"https".equals(endpoint.getScheme()) && !("http".equals(endpoint.getScheme())
                    && java.util.Set.of("localhost", "127.0.0.1", "[::1]").contains(endpoint.getHost())))
                throw new IllegalStateException("Game gateway requires HTTPS outside localhost");
            Map<String,Object> body = new LinkedHashMap<>();
            body.put("playerId", playerId);
            body.put("payload", payload == null ? Map.of() : payload);
            HttpRequest.Builder builder = HttpRequest.newBuilder(endpoint)
                    .timeout(Duration.ofSeconds(8))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(objectMapper.writeValueAsString(body)));
            builder.header("Authorization", "Bearer " + properties.getGameCoreServiceToken());
            HttpResponse<String> res = http.send(builder.build(), HttpResponse.BodyHandlers.ofString());
            Map<String,Object> out = new LinkedHashMap<>();
            out.put("ok", res.statusCode() / 100 == 2);
            out.put("httpStatus", res.statusCode());
            try { out.put("body", objectMapper.readValue(res.body(), Object.class)); }
            catch (Exception ignored) { out.put("body", res.body()); }
            return out;
        } catch (Exception e) {
            if (e instanceof InterruptedException) Thread.currentThread().interrupt();
            return Map.of("ok", false, "status", "CORE_API_ERROR", "message", "Game Core unavailable");
        }
    }
}

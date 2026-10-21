package com.lostkingsland.web.integration;

import com.lostkingsland.web.config.WebProperties;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@Service
public class IntegrationGateway {
    private static final Set<String> HOP_BY_HOP = Set.of(
            "host", "content-length", "connection", "transfer-encoding", "upgrade", "keep-alive", "proxy-authenticate",
            "proxy-authorization", "te", "trailer"
    );

    private final WebProperties properties;
    private final HttpClient http = HttpClient.newBuilder().connectTimeout(Duration.ofSeconds(3)).build();

    public IntegrationGateway(WebProperties properties) {
        this.properties = properties;
    }

    public Map<String,Object> adminStatus() {
        return health("ADMIN", properties.getAdminBaseUrl(), properties.getAdminHealthPath(), properties.getAdminServiceToken());
    }

    public Map<String,Object> botStatus() {
        return health("BOT", properties.getBotBaseUrl(), properties.getBotHealthPath(), properties.getBotServiceToken());
    }

    private Map<String,Object> health(String service, String baseUrl, String path, String token) {
        Map<String,Object> out = new LinkedHashMap<>();
        out.put("service", service);
        out.put("configured", baseUrl != null && !baseUrl.isBlank());
        if (baseUrl == null || baseUrl.isBlank()) {
            out.put("reachable", false);
            out.put("state", "NOT_CONFIGURED");
            return out;
        }
        try {
            URI uri = safeServiceUri(baseUrl.replaceAll("/$", "") + normalizePath(path));
            HttpRequest.Builder request = HttpRequest.newBuilder(uri)
                    .timeout(Duration.ofSeconds(4))
                    .header("Accept", "application/json")
                    .GET();
            if (token != null && !token.isBlank()) request.header("Authorization", "Bearer " + token);
            HttpResponse<String> response = http.send(request.build(), HttpResponse.BodyHandlers.ofString());
            out.put("reachable", response.statusCode() / 100 == 2);
            out.put("httpStatus", response.statusCode());
            out.put("state", response.statusCode() / 100 == 2 ? "ONLINE" : "DEGRADED");
        } catch (Exception failure) {
            if (failure instanceof InterruptedException) Thread.currentThread().interrupt();
            out.put("reachable", false);
            out.put("state", "OFFLINE");
            out.put("error", failure.getClass().getSimpleName());
        }
        return out;
    }

    public ForwardResult forwardPayosWebhook(byte[] body, HttpServletRequest incoming) {
        String target = properties.getPayosWebhookTargetUrl();
        if (target == null || target.isBlank()) {
            return new ForwardResult(503, "application/json", "{\"ok\":false,\"error\":\"PAYOS_WEBHOOK_TARGET_NOT_CONFIGURED\"}");
        }
        try {
            URI endpoint = safeServiceUri(target);
            HttpRequest.Builder builder = HttpRequest.newBuilder(endpoint)
                    .timeout(Duration.ofSeconds(20))
                    .POST(HttpRequest.BodyPublishers.ofByteArray(body));

            var names = incoming.getHeaderNames();
            while (names != null && names.hasMoreElements()) {
                String name = names.nextElement();
                String lower = name.toLowerCase(Locale.ROOT);
                if (HOP_BY_HOP.contains(lower) || lower.equals("authorization")) continue;
                var values = incoming.getHeaders(name);
                while (values.hasMoreElements()) builder.header(name, values.nextElement());
            }
            builder.header("X-LK-Relay", "lost-kingsland-web");
            String token = properties.getBotServiceToken();
            if (token != null && !token.isBlank()) builder.header("X-LK-Service-Token", token);

            HttpResponse<String> response = http.send(builder.build(), HttpResponse.BodyHandlers.ofString());
            String contentType = response.headers().firstValue("content-type").orElse("application/json");
            return new ForwardResult(response.statusCode(), contentType, response.body());
        } catch (Exception failure) {
            if (failure instanceof InterruptedException) Thread.currentThread().interrupt();
            return new ForwardResult(502, "application/json", "{\"ok\":false,\"error\":\"PAYOS_WEBHOOK_RELAY_FAILED\"}");
        }
    }

    private static String normalizePath(String path) {
        if (path == null || path.isBlank()) return "/";
        return path.startsWith("/") ? path : "/" + path;
    }

    private static URI safeServiceUri(String raw) {
        URI uri = URI.create(raw);
        String scheme = uri.getScheme();
        String host = uri.getHost();
        if ("https".equalsIgnoreCase(scheme)) return uri;
        if ("http".equalsIgnoreCase(scheme) && host != null && (host.equals("localhost") || host.equals("127.0.0.1") || host.equals("::1") || host.equals("[::1]"))) return uri;
        throw new IllegalArgumentException("Service integrations require HTTPS outside localhost");
    }

    public record ForwardResult(int statusCode, String contentType, String body) {}
}

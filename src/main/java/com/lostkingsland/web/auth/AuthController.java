package com.lostkingsland.web.auth;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lostkingsland.web.config.WebProperties;
import com.lostkingsland.web.portal.PortalService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@RestController
public class AuthController {
    private final WebProperties properties;
    private final PortalService portalService;
    private final ObjectMapper objectMapper;
    private final HttpClient http = HttpClient.newHttpClient();

    public AuthController(WebProperties properties, PortalService portalService, ObjectMapper objectMapper) {
        this.properties = properties;
        this.portalService = portalService;
        this.objectMapper = objectMapper;
    }

    @GetMapping("/api/auth/status")
    public Map<String,Object> status(HttpSession session) {
        Map<String,Object> out = new LinkedHashMap<>();
        out.put("authenticated", session.getAttribute("playerId") != null);
        out.put("playerId", session.getAttribute("playerId"));
        out.put("discordUser", session.getAttribute("discordUser"));
        out.put("discordOAuthConfigured", properties.discordOAuthConfigured());
        out.put("demoLoginEnabled", properties.isDemoLoginEnabled());
        return out;
    }

    @PostMapping("/api/auth/demo/{playerId}")
    public Map<String,Object> demoLogin(@PathVariable String playerId, HttpSession session) {
        if (!properties.isDemoLoginEnabled()) throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        if (portalService.playerOverview(playerId).isEmpty()) throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Player not found");
        session.setAttribute("playerId", playerId);
        session.setAttribute("authMode", "DEMO");
        return Map.of("ok", true, "playerId", playerId);
    }

    @PostMapping("/api/auth/logout")
    public Map<String,Object> logout(HttpSession session) {
        session.invalidate();
        return Map.of("ok", true);
    }

    @GetMapping("/auth/discord")
    public void discord(@RequestParam(defaultValue="portal") String returnTo,HttpSession session, HttpServletResponse response) throws IOException {
        if (!properties.discordOAuthConfigured()) {
            response.sendRedirect("/portal.html?auth=discord_not_configured");
            return;
        }
        String state = UUID.randomUUID().toString();
        session.setAttribute("authReturnTo", "wheel".equals(returnTo)?"/wheel.html":"/portal.html");
        session.setAttribute("oauthState", state);
        String url = "https://discord.com/oauth2/authorize?response_type=code"
                + "&client_id=" + enc(properties.getDiscordClientId())
                + "&scope=" + enc("identify")
                + "&state=" + enc(state)
                + "&redirect_uri=" + enc(properties.getDiscordRedirectUri());
        response.sendRedirect(url);
    }

    @GetMapping("/auth/discord/callback")
    public void discordCallback(@RequestParam String code, @RequestParam String state, HttpSession session, HttpServletResponse response,jakarta.servlet.http.HttpServletRequest request) throws IOException {
        String expected = (String) session.getAttribute("oauthState");
        if (expected == null || !expected.equals(state)) {
            response.sendRedirect("/portal.html?auth=state_mismatch");
            return;
        }
        session.removeAttribute("oauthState");
        session.removeAttribute("playerId");
        session.removeAttribute("authMode");
        session.removeAttribute("discordUser");
        session.removeAttribute("wheelCsrf");
        try {
            JsonNode token = exchangeCode(code);
            String accessToken = token.path("access_token").asText();
            JsonNode user = fetchDiscordUser(accessToken);
            String discordId = user.path("id").asText();
            Map<String,Object> profile = new LinkedHashMap<>();
            profile.put("id", discordId);
            profile.put("username", user.path("username").asText());
            profile.put("globalName", user.path("global_name").isNull() ? null : user.path("global_name").asText());
            profile.put("avatar", user.path("avatar").isNull() ? null : user.path("avatar").asText());
            session.setAttribute("discordUser", profile);
            Optional<String> playerId = portalService.resolvePlayerByDiscord(discordId);
            if (playerId.isPresent()) {
                request.changeSessionId();
                session.setAttribute("playerId", playerId.get());
                session.setAttribute("authMode", "DISCORD");
                response.sendRedirect("/wheel.html".equals(session.getAttribute("authReturnTo"))?"/wheel.html":"/portal.html");
            } else {
                response.sendRedirect("/portal.html?auth=not_linked");
            }
        } catch (Exception e) {
            response.sendRedirect("/portal.html?auth=discord_error");
        }
    }

    private JsonNode exchangeCode(String code) throws Exception {
        String body = "client_id=" + enc(properties.getDiscordClientId())
                + "&client_secret=" + enc(properties.getDiscordClientSecret())
                + "&grant_type=authorization_code"
                + "&code=" + enc(code)
                + "&redirect_uri=" + enc(properties.getDiscordRedirectUri());
        HttpRequest req = HttpRequest.newBuilder(URI.create("https://discord.com/api/oauth2/token"))
                .header("Content-Type", "application/x-www-form-urlencoded")
                .POST(HttpRequest.BodyPublishers.ofString(body))
                .build();
        HttpResponse<String> res = http.send(req, HttpResponse.BodyHandlers.ofString());
        if (res.statusCode() / 100 != 2) throw new IllegalStateException("Discord token exchange failed");
        return objectMapper.readTree(res.body());
    }

    private JsonNode fetchDiscordUser(String accessToken) throws Exception {
        HttpRequest req = HttpRequest.newBuilder(URI.create("https://discord.com/api/users/@me"))
                .header("Authorization", "Bearer " + accessToken)
                .GET().build();
        HttpResponse<String> res = http.send(req, HttpResponse.BodyHandlers.ofString());
        if (res.statusCode() / 100 != 2) throw new IllegalStateException("Discord user fetch failed");
        return objectMapper.readTree(res.body());
    }

    private static String enc(String s) { return URLEncoder.encode(s, StandardCharsets.UTF_8); }
}

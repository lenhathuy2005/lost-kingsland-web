package com.lostkingsland.web.portal;

import com.lostkingsland.web.config.WebProperties;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/portal")
public class PortalApiController {
    private final PortalService portalService;
    private final WebProperties properties;

    public PortalApiController(PortalService portalService, WebProperties properties) {
        this.portalService = portalService;
        this.properties = properties;
    }

    @GetMapping("/demo-players")
    public Object demoPlayers() {
        if (!properties.isDemoLoginEnabled()) throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        return portalService.listPlayers();
    }

    @GetMapping("/me")
    public Object me(HttpSession session) {
        String playerId = (String) session.getAttribute("playerId");
        if (playerId == null) return Map.of("authenticated", false, "demoLoginEnabled", properties.isDemoLoginEnabled());
        Object player = portalService.playerOverview(playerId).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Player not found"));
        Map<String,Object> out = new LinkedHashMap<>();
        boolean discordSession = "DISCORD".equals(session.getAttribute("authMode"));
        if (discordSession && session.getAttribute("portalCsrf") == null) {
            synchronized (session) {
                if (session.getAttribute("portalCsrf") == null) session.setAttribute("portalCsrf", UUID.randomUUID().toString());
            }
        }
        out.put("authenticated", true);
        out.put("dataMode", properties.useDatabase() ? "DATABASE" : "SNAPSHOT");
        out.put("coreActionsEnabled", discordSession && properties.gameCoreMutationsConfigured());
        out.put("csrf", discordSession ? session.getAttribute("portalCsrf") : null);
        out.put("discordUser", session.getAttribute("discordUser"));
        out.put("player", player);
        return out;
    }
}

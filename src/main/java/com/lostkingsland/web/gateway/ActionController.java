package com.lostkingsland.web.gateway;

import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;
import java.util.Set;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

@RestController
@RequestMapping("/api/portal/actions")
public class ActionController {
    private static final Set<String> ALLOWED = Set.of(
            "equip", "unequip", "set-loadout", "salvage",
            "march-start-hunt", "march-start-gather", "march-stop", "march-withdraw",
            "market-list", "market-buy", "market-cancel",
            "kingdom-collect", "settings-update"
    );

    private final GameCoreGateway gateway;

    public ActionController(GameCoreGateway gateway) { this.gateway = gateway; }

    @PostMapping("/{action}")
    public Object action(@PathVariable String action,
                         @RequestHeader(value="X-Portal-CSRF", required=false) String csrf,
                         @RequestBody(required = false) Object payload, HttpSession session) {
        String playerId = (String) session.getAttribute("playerId");
        if (playerId == null || !"DISCORD".equals(session.getAttribute("authMode")))
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Discord login required");
        Object expected = session.getAttribute("portalCsrf");
        if (expected == null || csrf == null || !MessageDigest.isEqual(expected.toString().getBytes(StandardCharsets.UTF_8), csrf.getBytes(StandardCharsets.UTF_8)))
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Reload portal");
        if (!ALLOWED.contains(action)) throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Unsupported web action");
        return gateway.invoke(action, playerId, payload == null ? Map.of() : payload);
    }
}

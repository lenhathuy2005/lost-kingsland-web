package com.lostkingsland.web.integration;

import com.lostkingsland.web.config.WebProperties;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/integrations")
public class IntegrationController {
    private final WebProperties properties;
    private final IntegrationGateway gateway;

    public IntegrationController(WebProperties properties, IntegrationGateway gateway) {
        this.properties = properties;
        this.gateway = gateway;
    }

    @GetMapping("/status")
    public Map<String,Object> status(HttpServletRequest request) {
        String base = publicBaseUrl();
        Map<String,Object> payment = new LinkedHashMap<>();
        payment.put("returnUrl", base + "/payment/success");
        payment.put("cancelUrl", base + "/payment/cancel");
        payment.put("webhookUrl", base + "/api/payments/payos/webhook");
        payment.put("relayConfigured", properties.payosRelayConfigured());

        Map<String,Object> links = new LinkedHashMap<>();
        links.put("admin", blankToNull(properties.getAdminPublicUrl()));
        links.put("bot", blankToNull(properties.getBotPublicUrl()));
        links.put("portal", "/portal.html");
        links.put("codex", "/catalog.html");
        links.put("wheel", "/wheel.html");
        links.put("ops", "/ops.html");

        Map<String,Object> out = new LinkedHashMap<>();
        out.put("web", Map.of("reachable", true, "state", "ONLINE", "dataMode", properties.getDataMode(), "gameplayConfig", properties.getGameplayConfig()));
        out.put("admin", gateway.adminStatus());
        out.put("bot", gateway.botStatus());
        out.put("payment", payment);
        out.put("links", links);
        return out;
    }

    private String publicBaseUrl() {
        String configured = properties.getPublicBaseUrl();
        if (configured != null && !configured.isBlank()) return configured.replaceAll("/$", "");
        return ServletUriComponentsBuilder.fromCurrentContextPath().build().toUriString().replaceAll("/$", "");
    }

    private static String blankToNull(String value) { return value == null || value.isBlank() ? null : value; }
}

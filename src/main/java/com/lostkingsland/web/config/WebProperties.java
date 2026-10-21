package com.lostkingsland.web.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class WebProperties {
    @Value("${lostkingsland.web.data-mode:SNAPSHOT}") private String dataMode;
    @Value("${lostkingsland.web.database-url:}") private String databaseUrl;
    @Value("${lostkingsland.web.database-user:}") private String databaseUser;
    @Value("${lostkingsland.web.database-password:}") private String databasePassword;
    @Value("${lostkingsland.web.gameplay-config:LK-V4.0-P20-RC-002}") private String gameplayConfig;
    @Value("${lostkingsland.web.demo-login-enabled:false}") private boolean demoLoginEnabled;
    @Value("${lostkingsland.web.game-core-base-url:}") private String gameCoreBaseUrl;
    @Value("${lostkingsland.web.game-core-service-token:}") private String gameCoreServiceToken;
    @Value("${lostkingsland.web.discord-client-id:}") private String discordClientId;
    @Value("${lostkingsland.web.discord-client-secret:}") private String discordClientSecret;
    @Value("${lostkingsland.web.discord-redirect-uri:}") private String discordRedirectUri;

    // V28 integration hub: Admin + Bot/Game Core + payment ingress.
    @Value("${lostkingsland.web.public-base-url:}") private String publicBaseUrl;
    @Value("${lostkingsland.web.admin-base-url:}") private String adminBaseUrl;
    @Value("${lostkingsland.web.admin-public-url:}") private String adminPublicUrl;
    @Value("${lostkingsland.web.admin-health-path:/api/health}") private String adminHealthPath;
    @Value("${lostkingsland.web.admin-service-token:}") private String adminServiceToken;
    @Value("${lostkingsland.web.bot-base-url:}") private String botBaseUrl;
    @Value("${lostkingsland.web.bot-public-url:}") private String botPublicUrl;
    @Value("${lostkingsland.web.bot-health-path:/actuator/health}") private String botHealthPath;
    @Value("${lostkingsland.web.bot-service-token:}") private String botServiceToken;
    @Value("${lostkingsland.web.payos-webhook-target-url:}") private String payosWebhookTargetUrl;

    public String getDataMode() { return dataMode; }
    public String getDatabaseUrl() { return databaseUrl; }
    public String getDatabaseUser() { return databaseUser; }
    public String getDatabasePassword() { return databasePassword; }
    public String getGameplayConfig() { return gameplayConfig; }
    public boolean isDemoLoginEnabled() { return demoLoginEnabled; }
    public String getGameCoreBaseUrl() { return gameCoreBaseUrl; }
    public String getGameCoreServiceToken() { return gameCoreServiceToken; }
    public String getDiscordClientId() { return discordClientId; }
    public String getDiscordClientSecret() { return discordClientSecret; }
    public String getDiscordRedirectUri() { return discordRedirectUri; }
    public String getPublicBaseUrl() { return publicBaseUrl; }
    public String getAdminBaseUrl() { return adminBaseUrl; }
    public String getAdminPublicUrl() { return adminPublicUrl; }
    public String getAdminHealthPath() { return adminHealthPath; }
    public String getAdminServiceToken() { return adminServiceToken; }
    public String getBotPublicUrl() { return botPublicUrl; }
    public String getBotHealthPath() { return botHealthPath; }

    public String getBotBaseUrl() {
        if (botBaseUrl != null && !botBaseUrl.isBlank()) return botBaseUrl;
        return gameCoreBaseUrl;
    }

    public String getBotServiceToken() {
        if (botServiceToken != null && !botServiceToken.isBlank()) return botServiceToken;
        return gameCoreServiceToken;
    }

    public String getPayosWebhookTargetUrl() {
        if (payosWebhookTargetUrl != null && !payosWebhookTargetUrl.isBlank()) return payosWebhookTargetUrl;
        String base = getBotBaseUrl();
        return base == null || base.isBlank() ? "" : base.replaceAll("/$", "") + "/api/payments/payos/webhook";
    }

    public boolean useDatabase() {
        return "DATABASE".equalsIgnoreCase(dataMode) && databaseUrl != null && !databaseUrl.isBlank();
    }
    public boolean discordOAuthConfigured() {
        return discordClientId != null && !discordClientId.isBlank() && discordClientSecret != null && !discordClientSecret.isBlank();
    }
    public boolean gameCoreConfigured() {
        return gameCoreBaseUrl != null && !gameCoreBaseUrl.isBlank();
    }
    public boolean gameCoreMutationsConfigured() {
        return gameCoreConfigured() && gameCoreServiceToken != null && gameCoreServiceToken.length() >= 32;
    }
    public boolean adminConfigured() { return adminBaseUrl != null && !adminBaseUrl.isBlank(); }
    public boolean botConfigured() { return getBotBaseUrl() != null && !getBotBaseUrl().isBlank(); }
    public boolean payosRelayConfigured() { return getPayosWebhookTargetUrl() != null && !getPayosWebhookTargetUrl().isBlank(); }
}

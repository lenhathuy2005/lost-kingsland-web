package com.lostkingsland.web.portal;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lostkingsland.web.config.WebProperties;
import com.lostkingsland.web.publicsite.PublicContentRepository;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class PortalService {
    private final WebProperties properties;
    private final SnapshotRepository snapshot;
    private final DatabaseRepository database;
    private final ObjectMapper objectMapper;
    private final PublicContentRepository publicContent;

    public PortalService(WebProperties properties, SnapshotRepository snapshot, DatabaseRepository database, ObjectMapper objectMapper, PublicContentRepository publicContent) {
        this.properties = properties;
        this.snapshot = snapshot;
        this.database = database;
        this.objectMapper = objectMapper;
        this.publicContent = publicContent;
    }

    public Map<String, Object> publicSummary() {
        Map<String, Object> out = new LinkedHashMap<>();
        out.put("dataMode", properties.useDatabase() ? "DATABASE" : "SNAPSHOT");
        out.put("gameCoreConnected", properties.gameCoreConfigured());
        out.put("discordOAuthConfigured", properties.discordOAuthConfigured());
        if (properties.useDatabase()) {
            Map<String,Object> live = publicContent.liveSummary();
            out.put("catalogTotal", live.getOrDefault("production_items", 0));
            out.put("productionItems", live.getOrDefault("production_items", 0));
            out.put("sampleBalanceItems", 0);
            out.put("rarityCount", live.getOrDefault("rarity_count", 10));
            out.put("equipmentSets", live.getOrDefault("equipment_sets", 20));
            out.put("setBonuses", live.getOrDefault("set_bonuses", 80));
            out.put("characters", live.getOrDefault("characters", 40));
            out.put("bosses", live.getOrDefault("bosses", 100));
            out.put("gameplayConfig", properties.getGameplayConfig());
            out.put("sharedMediaReady", publicContent.sharedMediaReady());
        } else {
            snapshot.summary().fields().forEachRemaining(e -> out.put(e.getKey(), jsonToJava(e.getValue())));
        }
        return out;
    }

    public List<?> listPlayers() {
        if (properties.useDatabase()) {
            List<Map<String, Object>> out = new ArrayList<>();
            for (Map<String,Object> p : database.listPlayers()) {
                Map<String,Object> row = new LinkedHashMap<>();
                row.put("id", string(p.get("id")));
                row.put("displayName", p.get("display_name"));
                row.put("accountLevel", p.get("account_level"));
                Map<String,Object> hero = new LinkedHashMap<>();
                hero.put("name", p.get("hero_name"));
                hero.put("level", p.get("hero_level"));
                hero.put("raceCode", p.get("race_code"));
                hero.put("pathCode", p.get("path_code"));
                hero.put("realmCode", p.get("realm_code"));
                hero.put("realmMinorStage", p.get("realm_minor_stage"));
                row.put("hero", hero);
                row.put("inventoryCount", p.getOrDefault("inventory_count", 0));
                out.add(row);
            }
            return out;
        }
        List<Map<String,Object>> result = new ArrayList<>();
        for (JsonNode p : snapshot.players()) {
            Map<String,Object> row = new LinkedHashMap<>();
            row.put("id", p.path("id").asText());
            row.put("displayName", p.path("displayName").asText());
            row.put("accountLevel", p.path("accountLevel").asInt());
            row.put("hero", jsonToJava(p.path("hero")));
            row.put("inventoryCount", p.path("inventory").size());
            result.add(row);
        }
        return result;
    }

    public Optional<?> playerOverview(String playerId) {
        if (properties.useDatabase()) return database.playerOverview(playerId).map(this::normalizeDatabasePlayer);
        return snapshot.player(playerId).map(this::jsonToJava);
    }

    public List<?> catalog(String search, String rarity, String slot, String setCode, boolean productionOnly, int limit) {
        if (properties.useDatabase()) {
            List<Map<String,Object>> rows = new ArrayList<>();
            for (Map<String,Object> raw : database.catalog(search, rarity, slot, limit)) {
                Map<String,Object> x = normalizeDatabaseCatalogItem(raw);
                if (setCode != null && !setCode.isBlank() && !setCode.equals(String.valueOf(x.get("setCode")))) continue;
                if (productionOnly && String.valueOf(x.getOrDefault("tags", "")).contains("SAMPLE_BALANCE")) continue;
                rows.add(x);
            }
            return rows;
        }
        List<Object> result = new ArrayList<>();
        String q = search == null ? "" : search.trim().toLowerCase(Locale.ROOT);
        for (JsonNode item : snapshot.catalog()) {
            if (productionOnly && item.path("sampleBalance").asBoolean()) continue;
            if (rarity != null && !rarity.isBlank() && !rarity.equalsIgnoreCase(item.path("rarity").asText())) continue;
            if (slot != null && !slot.isBlank() && !slot.equalsIgnoreCase(item.path("slot").asText())) continue;
            if (setCode != null && !setCode.isBlank() && !setCode.equalsIgnoreCase(item.path("setCode").asText())) continue;
            if (!q.isBlank()) {
                String hay = (item.path("name").asText("") + " " + item.path("code").asText("") + " " + item.path("setName").asText("")).toLowerCase(Locale.ROOT);
                if (!hay.contains(q)) continue;
            }
            result.add(jsonToJava(item));
            if (result.size() >= Math.min(Math.max(limit, 1), 1000)) break;
        }
        return result;
    }

    public Object equipmentSets() { return properties.useDatabase() ? publicContent.equipmentSets() : jsonToJava(snapshot.equipmentSets()); }
    public Object rarities() { return properties.useDatabase() ? publicContent.rarities() : jsonToJava(snapshot.rarities()); }

    public Optional<String> resolvePlayerByDiscord(String discordUserId) {
        if (!properties.useDatabase()) return Optional.empty();
        return database.resolvePlayerIdByDiscord(discordUserId);
    }

    private Map<String,Object> normalizeDatabasePlayer(Map<String,Object> raw) {
        Map<String,Object> out = new LinkedHashMap<>();
        out.put("id", string(raw.get("id")));
        out.put("accountId", string(raw.get("account_id")));
        out.put("displayName", raw.get("display_name"));
        out.put("accountLevel", raw.get("account_level"));
        out.put("accountXp", raw.get("account_xp"));
        out.put("avatarKey", raw.get("avatar_key"));

        if (raw.get("hero_id") != null) {
            Map<String,Object> h = new LinkedHashMap<>();
            h.put("id", string(raw.get("hero_id")));
            h.put("name", raw.get("hero_name"));
            h.put("level", raw.get("hero_level"));
            h.put("xp", raw.get("hero_xp"));
            h.put("raceCode", raw.get("race_code"));
            h.put("pathCode", raw.get("path_code"));
            h.put("realmCode", raw.get("realm_code"));
            h.put("realmMinorStage", raw.get("realm_minor_stage"));
            h.put("cultivationQi", raw.get("cultivation_qi"));
            h.put("cultivationProgress", raw.get("cultivation_progress"));
            h.put("tribulationFailStreak", raw.get("tribulation_fail_streak"));
            h.put("sectCode", raw.get("sect_code"));
            h.put("sectRank", raw.get("sect_rank"));
            h.put("sectReputation", raw.get("sect_reputation"));
            out.put("hero", h);
        }
        if (raw.get("current_floor") != null || raw.get("highest_floor") != null) {
            Map<String,Object> exploration = new LinkedHashMap<>();
            exploration.put("currentFloor", raw.get("current_floor"));
            exploration.put("highestFloor", raw.get("highest_floor"));
            out.put("exploration", exploration);
        }
        if (raw.get("kingdom_id") != null) {
            Map<String,Object> k = new LinkedHashMap<>();
            k.put("id", string(raw.get("kingdom_id")));
            k.put("level", raw.get("kingdom_level"));
            k.put("cityHallLevel", raw.get("city_hall_level"));
            k.put("buildings", raw.getOrDefault("kingdomBuildings", List.of()));
            out.put("kingdom", k);
        }
        if (raw.get("clan_id") != null) {
            Map<String,Object> c = new LinkedHashMap<>();
            c.put("id", string(raw.get("clan_id")));
            c.put("name", raw.get("clan_name"));
            c.put("tag", raw.get("clan_tag"));
            c.put("rank", raw.get("clan_rank"));
            c.put("contribution", raw.get("clan_contribution"));
            out.put("clan", c);
        }
        List<Map<String,Object>> inv = new ArrayList<>();
        Object inventory = raw.get("inventory");
        if (inventory instanceof List<?> list) {
            for (Object o : list) if (o instanceof Map<?,?> m) inv.add(normalizeDatabaseInventoryItem(castMap(m)));
        }
        out.put("inventory", inv);
        out.put("commanders", raw.getOrDefault("commanders", List.of()));
        out.put("marchSlots", raw.getOrDefault("marchSlots", List.of()));
        out.put("marketListings", raw.getOrDefault("marketListings", List.of()));
        return out;
    }

    private Map<String,Object> normalizeDatabaseInventoryItem(Map<String,Object> raw) {
        Map<String,Object> definition = new LinkedHashMap<>();
        definition.put("name", raw.get("name"));
        definition.put("slot", string(raw.get("slot")));
        definition.put("imageAssetKey", raw.get("image_asset_key"));
        definition.put("imageUrl", mediaUrl(raw.get("image_asset_key")));
        definition.put("baseStats", raw.get("base_stats"));
        definition.put("baseEffects", raw.get("base_effects"));
        definition.put("setCode", raw.get("set_code"));
        definition.put("setName", raw.get("set_name"));
        definition.put("tags", raw.get("tags"));
        Map<String,Object> x = new LinkedHashMap<>();
        x.put("id", string(raw.get("id")));
        x.put("itemCode", raw.get("item_code"));
        x.put("rarity", string(raw.get("rarity")));
        x.put("itemLevel", raw.get("item_level"));
        x.put("state", string(raw.get("state")));
        x.put("affixes", raw.get("affixes"));
        x.put("uniqueEffects", raw.get("unique_effects"));
        x.put("locked", raw.get("locked"));
        x.put("acquiredAt", raw.get("acquired_at"));
        x.put("definition", definition);
        return x;
    }

    private Map<String,Object> normalizeDatabaseCatalogItem(Map<String,Object> raw) {
        Map<String,Object> x = new LinkedHashMap<>();
        x.put("id", string(raw.get("id")));
        x.put("code", raw.get("code"));
        x.put("name", raw.get("name"));
        x.put("imageAssetKey", raw.get("image_asset_key"));
        x.put("imageUrl", mediaUrl(raw.get("image_asset_key")));
        x.put("slot", string(raw.get("slot")));
        x.put("rarity", string(raw.get("rarity")));
        x.put("tags", raw.get("tags"));
        x.put("baseStats", raw.get("base_stats"));
        x.put("baseEffects", raw.get("base_effects"));
        x.put("setCode", raw.get("set_code"));
        x.put("setName", raw.get("set_name"));
        return x;
    }

    @SuppressWarnings("unchecked")
    private static Map<String,Object> castMap(Map<?,?> m) { return (Map<String,Object>) m; }
    private static String string(Object o) { return o == null ? null : String.valueOf(o); }
    private static String mediaUrl(Object key) { return key == null || String.valueOf(key).isBlank() ? null : "/api/public/media/by-key?key=" + java.net.URLEncoder.encode(String.valueOf(key), java.nio.charset.StandardCharsets.UTF_8); }
    private Object jsonToJava(JsonNode node) { return objectMapper.convertValue(node, Object.class); }
}

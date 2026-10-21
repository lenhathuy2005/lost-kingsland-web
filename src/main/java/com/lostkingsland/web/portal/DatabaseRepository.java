package com.lostkingsland.web.portal;

import com.lostkingsland.web.config.WebProperties;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
public class DatabaseRepository {
    private final WebProperties properties;

    public DatabaseRepository(WebProperties properties) {
        this.properties = properties;
    }

    private Connection connection() throws SQLException {
        if (properties.getDatabaseUser() == null || properties.getDatabaseUser().isBlank()) {
            return DriverManager.getConnection(properties.getDatabaseUrl());
        }
        return DriverManager.getConnection(properties.getDatabaseUrl(), properties.getDatabaseUser(), properties.getDatabasePassword());
    }

    public List<Map<String, Object>> listPlayers() {
        String sql = """
            SELECT p.id, p.display_name, p.account_level, p.account_xp,
                   h.id AS hero_id, h.name AS hero_name, h.level AS hero_level, h.race_code, h.path_code,
                   h.realm_code, h.realm_minor_stage,
                   COALESCE(inv.inventory_count, 0) AS inventory_count
            FROM identity.players p
            LEFT JOIN hero.player_heroes h ON h.player_id = p.id
            LEFT JOIN LATERAL (
                SELECT count(*) AS inventory_count
                FROM inventory.item_instances ii
                WHERE ii.owner_player_id = p.id
            ) inv ON true
            ORDER BY p.created_at
            """;
        return query(sql);
    }

    public Optional<Map<String, Object>> playerOverview(String playerId) {
        String sql = """
            SELECT p.id, p.account_id, p.display_name, p.account_level, p.account_xp, p.avatar_key,
                   h.id AS hero_id, h.name AS hero_name, h.level AS hero_level, h.xp AS hero_xp,
                   h.race_code, h.path_code, h.realm_code, h.realm_minor_stage, h.cultivation_qi,
                   h.cultivation_progress, h.tribulation_fail_streak, h.sect_code, h.sect_rank, h.sect_reputation,
                   ep.current_floor, ep.highest_floor,
                   k.id AS kingdom_id, COALESCE(ch.city_hall_level, 0) AS kingdom_level, ch.city_hall_level,
                   c.id AS clan_id, c.name AS clan_name, c.tag AS clan_tag, cm.rank AS clan_rank,
                   cm.contribution AS clan_contribution
            FROM identity.players p
            LEFT JOIN hero.player_heroes h ON h.player_id = p.id
            LEFT JOIN adventure.player_exploration_progress ep ON ep.player_id = p.id
            LEFT JOIN kingdom.player_kingdoms k ON k.player_id = p.id
            LEFT JOIN LATERAL (
                SELECT kb.level AS city_hall_level
                FROM kingdom.kingdom_buildings kb
                WHERE kb.kingdom_id = k.id AND kb.building_code = 'CITY_HALL'
                ORDER BY kb.updated_at DESC LIMIT 1
            ) ch ON true
            LEFT JOIN clan.clan_members cm ON cm.player_id = p.id AND cm.status = 'ACTIVE'
            LEFT JOIN clan.clans c ON c.id = cm.clan_id
            WHERE p.id = CAST(? AS uuid)
            """;
        List<Map<String, Object>> rows = query(sql, playerId);
        if (rows.isEmpty()) return Optional.empty();
        Map<String, Object> result = new LinkedHashMap<>(rows.getFirst());
        result.put("inventory", inventory(playerId));
        result.put("commanders", commanders(playerId));
        result.put("marchSlots", marchSlots(playerId));
        result.put("marketListings", marketListings(playerId));
        result.put("kingdomBuildings", kingdomBuildings(playerId));
        return Optional.of(result);
    }

    public List<Map<String, Object>> inventory(String playerId) {
        String sql = """
            SELECT ii.id, ii.item_code, ii.rarity, ii.item_level, ii.state, ii.affixes, ii.unique_effects,
                   ii.locked, ii.acquired_at, d.display_name_vi AS name, d.equipment_slot AS slot,
                   d.image_asset_key, d.base_stats, d.base_effects, d.set_code, d.set_name, d.tags
            FROM inventory.item_instances ii
            LEFT JOIN inventory.item_defs d
              ON d.code = ii.item_code AND d.config_version_id = ii.item_config_version_id
            WHERE ii.owner_player_id = CAST(? AS uuid)
            ORDER BY ii.item_level DESC, ii.acquired_at DESC
            """;
        return query(sql, playerId);
    }

    public List<Map<String, Object>> commanders(String playerId) {
        return query("SELECT * FROM commander.player_commanders WHERE player_id = CAST(? AS uuid) ORDER BY level DESC", playerId);
    }

    public List<Map<String, Object>> marchSlots(String playerId) {
        return query("SELECT * FROM march.player_march_slots WHERE player_id = CAST(? AS uuid) ORDER BY slot_no", playerId);
    }

    public List<Map<String, Object>> marketListings(String playerId) {
        return query("SELECT * FROM market.listings WHERE seller_player_id = CAST(? AS uuid) OR buyer_player_id = CAST(? AS uuid) ORDER BY created_at DESC", playerId, playerId);
    }

    public List<Map<String, Object>> kingdomBuildings(String playerId) {
        String sql = """
            SELECT b.* FROM kingdom.kingdom_buildings b
            JOIN kingdom.player_kingdoms k ON k.id = b.kingdom_id
            WHERE k.player_id = CAST(? AS uuid)
            ORDER BY b.building_code
            """;
        return query(sql, playerId);
    }

    public List<Map<String, Object>> catalog(String search, String rarity, String slot, int limit) {
        StringBuilder sql = new StringBuilder("""
            SELECT d.id, d.code, d.display_name_vi AS name, d.image_asset_key,
                   d.equipment_slot AS slot, d.rarity, d.tags, d.base_stats, d.base_effects,
                   d.set_code, d.set_name, d.catalog_status
            FROM inventory.item_defs d
            JOIN platform.config_versions cv ON cv.id=d.config_version_id
            WHERE cv.version_code = ?
              AND COALESCE(d.catalog_status, 'ACTIVE_CANONICAL') = 'ACTIVE_CANONICAL'
            """);
        List<Object> args = new ArrayList<>();
        args.add(properties.getGameplayConfig());
        if (search != null && !search.isBlank()) {
            sql.append(" AND (d.code ILIKE ? OR d.display_name_vi ILIKE ?)");
            args.add("%" + search + "%"); args.add("%" + search + "%");
        }
        if (rarity != null && !rarity.isBlank()) {
            sql.append(" AND d.rarity::text = ?"); args.add(rarity);
        }
        if (slot != null && !slot.isBlank()) {
            sql.append(" AND d.equipment_slot::text = ?"); args.add(slot);
        }
        sql.append(" ORDER BY d.rarity, d.display_name_vi NULLS LAST LIMIT ?"); args.add(Math.min(Math.max(limit, 1), 1000));
        return query(sql.toString(), args.toArray());
    }

    public Optional<String> resolvePlayerIdByDiscord(String discordUserId) {
        String sql = """
            SELECT p.id::text AS player_id
            FROM identity.discord_links dl
            JOIN identity.accounts a ON a.id = dl.account_id
            JOIN identity.players p ON p.account_id = a.id
            WHERE dl.discord_user_id = CAST(? AS bigint) AND dl.revoked_at IS NULL
            ORDER BY dl.is_primary DESC, dl.linked_at DESC LIMIT 1
            """;
        List<Map<String, Object>> rows = query(sql, discordUserId);
        return rows.isEmpty() ? Optional.empty() : Optional.ofNullable(String.valueOf(rows.getFirst().get("player_id")));
    }

    private List<Map<String, Object>> query(String sql, Object... args) {
        if (!properties.useDatabase()) throw new IllegalStateException("DATABASE mode is not configured");
        try (Connection c = connection(); PreparedStatement ps = c.prepareStatement(sql)) {
            for (int i = 0; i < args.length; i++) ps.setObject(i + 1, args[i]);
            try (ResultSet rs = ps.executeQuery()) {
                List<Map<String, Object>> rows = new ArrayList<>();
                ResultSetMetaData md = rs.getMetaData();
                while (rs.next()) {
                    Map<String, Object> row = new LinkedHashMap<>();
                    for (int i = 1; i <= md.getColumnCount(); i++) {
                        Object value = rs.getObject(i);
                        if (value instanceof java.sql.Array array) value = array.getArray();
                        row.put(md.getColumnLabel(i), value);
                    }
                    rows.add(row);
                }
                return rows;
            }
        } catch (SQLException e) {
            throw new IllegalStateException("Database query failed: " + e.getMessage(), e);
        }
    }
}

package com.lostkingsland.web.publicsite;

import com.lostkingsland.web.config.WebProperties;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.*;

@Repository
public class PublicContentRepository {
    public record MediaAsset(byte[] content, String contentType, String sha256) {}

    private final WebProperties properties;

    public PublicContentRepository(WebProperties properties) {
        this.properties = properties;
    }

    private Connection connection() throws SQLException {
        if (properties.getDatabaseUser() == null || properties.getDatabaseUser().isBlank()) {
            return DriverManager.getConnection(properties.getDatabaseUrl());
        }
        return DriverManager.getConnection(properties.getDatabaseUrl(), properties.getDatabaseUser(), properties.getDatabasePassword());
    }

    private List<Map<String,Object>> query(String sql, Object... args) {
        if (!properties.useDatabase()) throw new IllegalStateException("DATABASE mode is not configured");
        try (Connection c=connection(); PreparedStatement ps=c.prepareStatement(sql)) {
            for (int i=0;i<args.length;i++) ps.setObject(i+1,args[i]);
            try (ResultSet rs=ps.executeQuery()) {
                List<Map<String,Object>> out=new ArrayList<>(); ResultSetMetaData md=rs.getMetaData();
                while (rs.next()) {
                    Map<String,Object> row=new LinkedHashMap<>();
                    for (int i=1;i<=md.getColumnCount();i++) {
                        Object v=rs.getObject(i); if (v instanceof java.sql.Array a) v=a.getArray();
                        row.put(md.getColumnLabel(i),v);
                    }
                    out.add(row);
                }
                return out;
            }
        } catch (SQLException e) { throw new IllegalStateException("Database query failed",e); }
    }

    public boolean sharedMediaReady() {
        if (!properties.useDatabase()) return false;
        List<Map<String,Object>> rows=query("SELECT to_regclass('platform.media_assets') IS NOT NULL AS media, to_regclass('platform.entity_media_links') IS NOT NULL AS links");
        return !rows.isEmpty() && Boolean.TRUE.equals(rows.getFirst().get("media")) && Boolean.TRUE.equals(rows.getFirst().get("links"));
    }

    public Optional<MediaAsset> media(String key) {
        if (!properties.useDatabase() || key==null || key.isBlank()) return Optional.empty();
        try (Connection c=connection(); PreparedStatement ps=c.prepareStatement("SELECT content_bytes,content_type,sha256 FROM platform.media_assets WHERE asset_key=? AND active=true")) {
            ps.setString(1,key);
            try (ResultSet rs=ps.executeQuery()) {
                if (!rs.next()) return Optional.empty();
                return Optional.of(new MediaAsset(rs.getBytes(1),rs.getString(2),rs.getString(3)));
            }
        } catch (SQLException e) { return Optional.empty(); }
    }

    public Map<String,Object> liveSummary() {
        String sql="""
            WITH cfg AS (SELECT id FROM platform.config_versions WHERE version_code=?)
            SELECT
              (SELECT count(*) FROM inventory.item_defs d,cfg WHERE d.config_version_id=cfg.id AND COALESCE(d.catalog_status,'ACTIVE_CANONICAL')='ACTIVE_CANONICAL') AS production_items,
              (SELECT count(*) FROM inventory.rarity_policy) AS rarity_count,
              (SELECT count(*) FROM inventory.equipment_set_defs WHERE enabled=true) AS equipment_sets,
              (SELECT count(*) FROM inventory.equipment_set_bonuses WHERE enabled=true) AS set_bonuses,
              (SELECT count(*) FROM hero.character_defs WHERE active=true) AS characters,
              (SELECT count(*) FROM adventure.faction_boss_catalog WHERE active=true) AS bosses,
              (SELECT count(*) FROM inventory.equipment_forge_recipes) AS forge_recipes,
              (SELECT count(*) FROM gacha.wheel_rules) AS wheel_rules
            """;
        List<Map<String,Object>> rows=query(sql,properties.getGameplayConfig());
        return rows.isEmpty()?Map.of():rows.getFirst();
    }

    public List<Map<String,Object>> rarities() {
        return query("SELECT rarity::text AS code,power_ordinal AS ordinal FROM inventory.rarity_policy ORDER BY power_ordinal");
    }

    public List<Map<String,Object>> equipmentSets() {
        return query("""
            SELECT s.set_code AS code,s.set_name AS name,s.rarity::text AS rarity,s.identity_summary AS identity,
                   COALESCE(jsonb_agg(jsonb_build_object('pieces',b.pieces_required,'text',b.display_text_vi,'params',b.bonus_params) ORDER BY b.pieces_required)
                     FILTER (WHERE b.set_code IS NOT NULL),'[]'::jsonb) AS bonuses
            FROM inventory.equipment_set_defs s
            LEFT JOIN inventory.equipment_set_bonuses b ON b.set_code=s.set_code AND b.enabled=true
            WHERE s.enabled=true
            GROUP BY s.set_code,s.set_name,s.rarity,s.identity_summary
            ORDER BY s.rarity,s.set_name
            """);
    }

    public List<Map<String,Object>> characters(String q,int limit) {
        String media = sharedMediaReady() ? """
            LEFT JOIN LATERAL (
              SELECT asset_key FROM platform.entity_media_links l
              WHERE l.entity_type='CHARACTER_DEF' AND l.entity_id=c.code AND l.is_primary=true LIMIT 1
            ) m ON true
            """ : "";
        String image = sharedMediaReady() ? "COALESCE(c.image_asset_key,m.asset_key)" : "c.image_asset_key";
        return query("SELECT c.code,c.display_name_vi AS name,c.rarity::text AS rarity,c.combat_role,c.affinity_code,c.weapon_theme,c.rarity_power_mult,c.signature_skill_vi,c.lore_summary_vi,"+image+" AS image_asset_key FROM hero.character_defs c "+media+" WHERE c.active=true AND (?='' OR c.code ILIKE ? OR c.display_name_vi ILIKE ?) ORDER BY c.rarity,c.display_name_vi LIMIT ?",
                q,"%"+q+"%","%"+q+"%",Math.min(Math.max(limit,1),500));
    }

    public List<Map<String,Object>> bosses(String q,String faction,int limit) {
        boolean mediaReady=sharedMediaReady();
        String media=mediaReady?"""
            LEFT JOIN LATERAL (
              SELECT asset_key FROM platform.entity_media_links l
              WHERE l.entity_type='FACTION_BOSS' AND l.entity_id=b.boss_code AND l.is_primary=true LIMIT 1
            ) m ON true
            """:"";
        String image=mediaReady?"m.asset_key":"NULL::varchar";
        return query("SELECT b.boss_code AS code,b.display_name_vi AS name,b.title_vi,b.alias_vi,b.faction,b.sequence_no,b.archetype_code,b.signature_skill_vi,b.mechanic_code,b.identity_text,b.lore_summary_vi,"+image+" AS image_asset_key FROM adventure.faction_boss_catalog b "+media+" WHERE b.active=true AND (?='' OR b.boss_code ILIKE ? OR b.display_name_vi ILIKE ?) AND (?='' OR b.faction=?) ORDER BY b.faction,b.sequence_no LIMIT ?",
                q,"%"+q+"%","%"+q+"%",faction,faction,Math.min(Math.max(limit,1),500));
    }

    public Optional<String> entityPrimaryMedia(String entityType,String entityId) {
        if (!sharedMediaReady()) return Optional.empty();
        List<Map<String,Object>> rows=query("SELECT asset_key FROM platform.entity_media_links WHERE entity_type=? AND entity_id=? AND is_primary=true LIMIT 1",entityType,entityId);
        return rows.isEmpty()?Optional.empty():Optional.ofNullable(String.valueOf(rows.getFirst().get("asset_key")));
    }
}

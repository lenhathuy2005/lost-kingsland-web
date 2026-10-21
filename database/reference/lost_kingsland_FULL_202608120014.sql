--
-- PostgreSQL database dump
--

-- Dumped from database version 16.14
-- Dumped by pg_dump version 17.0

-- Started on 2026-08-12 00:14:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 26 (class 2615 OID 32899)
-- Name: admin; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA admin;


ALTER SCHEMA admin OWNER TO lost_kingsland;

--
-- TOC entry 12 (class 2615 OID 32885)
-- Name: adventure; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA adventure;


ALTER SCHEMA adventure OWNER TO lost_kingsland;

--
-- TOC entry 16 (class 2615 OID 32889)
-- Name: clan; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA clan;


ALTER SCHEMA clan OWNER TO lost_kingsland;

--
-- TOC entry 13 (class 2615 OID 32886)
-- Name: combat; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA combat;


ALTER SCHEMA combat OWNER TO lost_kingsland;

--
-- TOC entry 22 (class 2615 OID 32895)
-- Name: commander; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA commander;


ALTER SCHEMA commander OWNER TO lost_kingsland;

--
-- TOC entry 20 (class 2615 OID 32893)
-- Name: commerce; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA commerce;


ALTER SCHEMA commerce OWNER TO lost_kingsland;

--
-- TOC entry 17 (class 2615 OID 32890)
-- Name: competitive; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA competitive;


ALTER SCHEMA competitive OWNER TO lost_kingsland;

--
-- TOC entry 10 (class 2615 OID 32883)
-- Name: content; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA content;


ALTER SCHEMA content OWNER TO lost_kingsland;

--
-- TOC entry 19 (class 2615 OID 32892)
-- Name: economy; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA economy;


ALTER SCHEMA economy OWNER TO lost_kingsland;

--
-- TOC entry 11 (class 2615 OID 32884)
-- Name: hero; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA hero;


ALTER SCHEMA hero OWNER TO lost_kingsland;

--
-- TOC entry 9 (class 2615 OID 32882)
-- Name: identity; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA identity;


ALTER SCHEMA identity OWNER TO lost_kingsland;

--
-- TOC entry 14 (class 2615 OID 32887)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO lost_kingsland;

--
-- TOC entry 15 (class 2615 OID 32888)
-- Name: kingdom; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA kingdom;


ALTER SCHEMA kingdom OWNER TO lost_kingsland;

--
-- TOC entry 18 (class 2615 OID 32891)
-- Name: liveops; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA liveops;


ALTER SCHEMA liveops OWNER TO lost_kingsland;

--
-- TOC entry 24 (class 2615 OID 32897)
-- Name: march; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA march;


ALTER SCHEMA march OWNER TO lost_kingsland;

--
-- TOC entry 25 (class 2615 OID 32898)
-- Name: market; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA market;


ALTER SCHEMA market OWNER TO lost_kingsland;

--
-- TOC entry 23 (class 2615 OID 32896)
-- Name: media; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA media;


ALTER SCHEMA media OWNER TO lost_kingsland;

--
-- TOC entry 21 (class 2615 OID 32894)
-- Name: ops; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA ops;


ALTER SCHEMA ops OWNER TO lost_kingsland;

--
-- TOC entry 8 (class 2615 OID 32881)
-- Name: platform; Type: SCHEMA; Schema: -; Owner: lost_kingsland
--

CREATE SCHEMA platform;


ALTER SCHEMA platform OWNER TO lost_kingsland;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 5823 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 1125 (class 1247 OID 33012)
-- Name: node_type; Type: TYPE; Schema: adventure; Owner: lost_kingsland
--

CREATE TYPE adventure.node_type AS ENUM (
    'COMBAT',
    'ELITE',
    'EVENT',
    'SHOP',
    'REST',
    'TREASURE',
    'BOSS'
);


ALTER TYPE adventure.node_type OWNER TO lost_kingsland;

--
-- TOC entry 1122 (class 1247 OID 33000)
-- Name: run_status; Type: TYPE; Schema: adventure; Owner: lost_kingsland
--

CREATE TYPE adventure.run_status AS ENUM (
    'ACTIVE',
    'PAUSED',
    'COMPLETED',
    'FAILED',
    'ABANDONED'
);


ALTER TYPE adventure.run_status OWNER TO lost_kingsland;

--
-- TOC entry 1143 (class 1247 OID 33086)
-- Name: member_rank; Type: TYPE; Schema: clan; Owner: lost_kingsland
--

CREATE TYPE clan.member_rank AS ENUM (
    'RECRUIT',
    'MEMBER',
    'VETERAN',
    'OFFICER',
    'LEADER'
);


ALTER TYPE clan.member_rank OWNER TO lost_kingsland;

--
-- TOC entry 1131 (class 1247 OID 33044)
-- Name: actor_type; Type: TYPE; Schema: combat; Owner: lost_kingsland
--

CREATE TYPE combat.actor_type AS ENUM (
    'PLAYER_HERO',
    'COMMANDER',
    'COMPANION',
    'ENEMY',
    'BOSS',
    'ARENA_DEFENDER'
);


ALTER TYPE combat.actor_type OWNER TO lost_kingsland;

--
-- TOC entry 1128 (class 1247 OID 33028)
-- Name: combat_status; Type: TYPE; Schema: combat; Owner: lost_kingsland
--

CREATE TYPE combat.combat_status AS ENUM (
    'CREATED',
    'ACTIVE',
    'WON',
    'LOST',
    'FLED',
    'CANCELLED',
    'SETTLED'
);


ALTER TYPE combat.combat_status OWNER TO lost_kingsland;

--
-- TOC entry 1134 (class 1247 OID 33058)
-- Name: damage_channel; Type: TYPE; Schema: combat; Owner: lost_kingsland
--

CREATE TYPE combat.damage_channel AS ENUM (
    'PHYSICAL',
    'MYSTIC',
    'TRUE',
    'HYBRID'
);


ALTER TYPE combat.damage_channel OWNER TO lost_kingsland;

--
-- TOC entry 1140 (class 1247 OID 33080)
-- Name: execution_mode; Type: TYPE; Schema: combat; Owner: lost_kingsland
--

CREATE TYPE combat.execution_mode AS ENUM (
    'MANUAL_TURN',
    'AUTO_POLICY'
);


ALTER TYPE combat.execution_mode OWNER TO lost_kingsland;

--
-- TOC entry 1137 (class 1247 OID 33068)
-- Name: profile_code; Type: TYPE; Schema: combat; Owner: lost_kingsland
--

CREATE TYPE combat.profile_code AS ENUM (
    'PVE_STANDARD',
    'PVE_BOSS',
    'PVP_ARENA',
    'PVP_CLAN_SIEGE',
    'BREAKTHROUGH_TRIAL'
);


ALTER TYPE combat.profile_code OWNER TO lost_kingsland;

--
-- TOC entry 1152 (class 1247 OID 33126)
-- Name: commander_status; Type: TYPE; Schema: commander; Owner: lost_kingsland
--

CREATE TYPE commander.commander_status AS ENUM (
    'RESERVED',
    'AVAILABLE',
    'OWNED',
    'DISABLED',
    'ARCHIVED'
);


ALTER TYPE commander.commander_status OWNER TO lost_kingsland;

--
-- TOC entry 1149 (class 1247 OID 33110)
-- Name: payment_status; Type: TYPE; Schema: commerce; Owner: lost_kingsland
--

CREATE TYPE commerce.payment_status AS ENUM (
    'RECEIVED',
    'VALIDATING',
    'VALID',
    'GRANTED',
    'REFUNDED',
    'CHARGEBACK',
    'REJECTED'
);


ALTER TYPE commerce.payment_status OWNER TO lost_kingsland;

--
-- TOC entry 1146 (class 1247 OID 33098)
-- Name: season_status; Type: TYPE; Schema: competitive; Owner: lost_kingsland
--

CREATE TYPE competitive.season_status AS ENUM (
    'DRAFT',
    'SCHEDULED',
    'ACTIVE',
    'SETTLEMENT',
    'CLOSED'
);


ALTER TYPE competitive.season_status OWNER TO lost_kingsland;

--
-- TOC entry 1119 (class 1247 OID 32980)
-- Name: equipment_slot; Type: TYPE; Schema: inventory; Owner: lost_kingsland
--

CREATE TYPE inventory.equipment_slot AS ENUM (
    'HELM',
    'CHEST',
    'SHOULDER',
    'AMULET',
    'BOOTS',
    'RING',
    'OFF_HAND',
    'WEAPON',
    'PET'
);


ALTER TYPE inventory.equipment_slot OWNER TO lost_kingsland;

--
-- TOC entry 1113 (class 1247 OID 32952)
-- Name: item_rarity; Type: TYPE; Schema: inventory; Owner: lost_kingsland
--

CREATE TYPE inventory.item_rarity AS ENUM (
    'COMMON',
    'UNCOMMON',
    'RARE',
    'EPIC',
    'LEGENDARY',
    'MYTHIC',
    'ANCIENT',
    'DIVINE',
    'RELIC',
    'GOD'
);


ALTER TYPE inventory.item_rarity OWNER TO lost_kingsland;

--
-- TOC entry 1116 (class 1247 OID 32964)
-- Name: item_state; Type: TYPE; Schema: inventory; Owner: lost_kingsland
--

CREATE TYPE inventory.item_state AS ENUM (
    'OWNED',
    'EQUIPPED',
    'LOCKED',
    'LISTED',
    'CONSUMED',
    'SALVAGED',
    'DESTROYED'
);


ALTER TYPE inventory.item_state OWNER TO lost_kingsland;

--
-- TOC entry 1158 (class 1247 OID 33150)
-- Name: assignment_type; Type: TYPE; Schema: march; Owner: lost_kingsland
--

CREATE TYPE march.assignment_type AS ENUM (
    'HUNT',
    'GATHER'
);


ALTER TYPE march.assignment_type OWNER TO lost_kingsland;

--
-- TOC entry 1155 (class 1247 OID 33138)
-- Name: march_status; Type: TYPE; Schema: march; Owner: lost_kingsland
--

CREATE TYPE march.march_status AS ENUM (
    'AVAILABLE',
    'HUNTING',
    'GATHERING',
    'STOPPING',
    'DISABLED'
);


ALTER TYPE march.march_status OWNER TO lost_kingsland;

--
-- TOC entry 1161 (class 1247 OID 33156)
-- Name: resource_site_status; Type: TYPE; Schema: march; Owner: lost_kingsland
--

CREATE TYPE march.resource_site_status AS ENUM (
    'AVAILABLE',
    'OCCUPIED',
    'DEPLETED',
    'DISABLED'
);


ALTER TYPE march.resource_site_status OWNER TO lost_kingsland;

--
-- TOC entry 1164 (class 1247 OID 33166)
-- Name: listing_status; Type: TYPE; Schema: market; Owner: lost_kingsland
--

CREATE TYPE market.listing_status AS ENUM (
    'ACTIVE',
    'SOLD',
    'CANCELLED',
    'EXPIRED'
);


ALTER TYPE market.listing_status OWNER TO lost_kingsland;

--
-- TOC entry 1170 (class 1247 OID 33182)
-- Name: trade_status; Type: TYPE; Schema: market; Owner: lost_kingsland
--

CREATE TYPE market.trade_status AS ENUM (
    'PENDING',
    'ACCEPTED',
    'DECLINED',
    'CANCELLED',
    'EXPIRED',
    'SETTLED'
);


ALTER TYPE market.trade_status OWNER TO lost_kingsland;

--
-- TOC entry 1167 (class 1247 OID 33176)
-- Name: transfer_type; Type: TYPE; Schema: market; Owner: lost_kingsland
--

CREATE TYPE market.transfer_type AS ENUM (
    'MARKET',
    'DIRECT_TRADE'
);


ALTER TYPE market.transfer_type OWNER TO lost_kingsland;

--
-- TOC entry 1110 (class 1247 OID 32938)
-- Name: entity_scope; Type: TYPE; Schema: platform; Owner: lost_kingsland
--

CREATE TYPE platform.entity_scope AS ENUM (
    'ACCOUNT',
    'PLAYER',
    'HERO',
    'CLAN',
    'SEASON',
    'SYSTEM'
);


ALTER TYPE platform.entity_scope OWNER TO lost_kingsland;

--
-- TOC entry 1107 (class 1247 OID 32930)
-- Name: integrity_tier; Type: TYPE; Schema: platform; Owner: lost_kingsland
--

CREATE TYPE platform.integrity_tier AS ENUM (
    'A',
    'B',
    'C'
);


ALTER TYPE platform.integrity_tier OWNER TO lost_kingsland;

--
-- TOC entry 1101 (class 1247 OID 32908)
-- Name: job_status; Type: TYPE; Schema: platform; Owner: lost_kingsland
--

CREATE TYPE platform.job_status AS ENUM (
    'PENDING',
    'RUNNING',
    'SUCCEEDED',
    'FAILED',
    'CANCELLED'
);


ALTER TYPE platform.job_status OWNER TO lost_kingsland;

--
-- TOC entry 1104 (class 1247 OID 32920)
-- Name: queue_status; Type: TYPE; Schema: platform; Owner: lost_kingsland
--

CREATE TYPE platform.queue_status AS ENUM (
    'RUNNING',
    'COMPLETED',
    'CANCELLED',
    'FAILED'
);


ALTER TYPE platform.queue_status OWNER TO lost_kingsland;

--
-- TOC entry 1098 (class 1247 OID 32901)
-- Name: record_status; Type: TYPE; Schema: platform; Owner: lost_kingsland
--

CREATE TYPE platform.record_status AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'ARCHIVED'
);


ALTER TYPE platform.record_status OWNER TO lost_kingsland;

--
-- TOC entry 447 (class 1255 OID 34200)
-- Name: can_receive_rarity(inventory.item_rarity, inventory.item_rarity); Type: FUNCTION; Schema: market; Owner: lost_kingsland
--

CREATE FUNCTION market.can_receive_rarity(p_item_rarity inventory.item_rarity, p_natural_max inventory.item_rarity) RETURNS boolean
    LANGUAGE sql STABLE
    AS $$
    SELECT item.power_ordinal <= LEAST(natural_rarity.power_ordinal + 1, global_max.max_ordinal)
    FROM inventory.rarity_policy item
    JOIN inventory.rarity_policy natural_rarity ON natural_rarity.rarity = p_natural_max
    CROSS JOIN (SELECT max(power_ordinal) AS max_ordinal FROM inventory.rarity_policy) global_max
    WHERE item.rarity = p_item_rarity;
$$;


ALTER FUNCTION market.can_receive_rarity(p_item_rarity inventory.item_rarity, p_natural_max inventory.item_rarity) OWNER TO lost_kingsland;

--
-- TOC entry 5824 (class 0 OID 0)
-- Dependencies: 447
-- Name: FUNCTION can_receive_rarity(p_item_rarity inventory.item_rarity, p_natural_max inventory.item_rarity); Type: COMMENT; Schema: market; Owner: lost_kingsland
--

COMMENT ON FUNCTION market.can_receive_rarity(p_item_rarity inventory.item_rarity, p_natural_max inventory.item_rarity) IS 'Recipient eligibility helper: market/direct trade item rarity may be at most one tier above the recipient current-floor NaturalMaxRarity.';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 387 (class 1259 OID 46114)
-- Name: equipment_set_bonuses; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.equipment_set_bonuses (
    set_code character varying(96) NOT NULL,
    pieces_required smallint NOT NULL,
    bonus_type character varying(48) NOT NULL,
    bonus_params jsonb NOT NULL,
    display_text_vi character varying(240) NOT NULL,
    design_note text,
    enabled boolean DEFAULT true NOT NULL,
    CONSTRAINT equipment_set_bonuses_pieces_required_check CHECK ((pieces_required = ANY (ARRAY[2, 4, 6, 8])))
);


ALTER TABLE inventory.equipment_set_bonuses OWNER TO lost_kingsland;

--
-- TOC entry 5825 (class 0 OID 0)
-- Dependencies: 387
-- Name: TABLE equipment_set_bonuses; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON TABLE inventory.equipment_set_bonuses IS '2/4/6/8-piece equipment set breakpoints. Reached breakpoints stack cumulatively. Values are intentionally small so loose/mixed builds remain viable.';


--
-- TOC entry 5826 (class 0 OID 0)
-- Dependencies: 387
-- Name: COLUMN equipment_set_bonuses.pieces_required; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON COLUMN inventory.equipment_set_bonuses.pieces_required IS 'Breakpoint count. Active when equipped pieces of this set >= pieces_required.';


--
-- TOC entry 5827 (class 0 OID 0)
-- Dependencies: 387
-- Name: COLUMN equipment_set_bonuses.bonus_params; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON COLUMN inventory.equipment_set_bonuses.bonus_params IS 'Config payload. Normal value=0.02 means +2% additive to the named stat family. Lifesteal rows use unit=PERCENTAGE_POINT and value=0.01 for +1 percentage point.';


--
-- TOC entry 384 (class 1259 OID 46084)
-- Name: equipment_set_defs; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.equipment_set_defs (
    set_code character varying(96) NOT NULL,
    rarity inventory.item_rarity NOT NULL,
    set_name character varying(160) NOT NULL,
    identity_summary text NOT NULL,
    lore_summary text NOT NULL,
    set_bonus jsonb DEFAULT '{}'::jsonb NOT NULL,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE inventory.equipment_set_defs OWNER TO lost_kingsland;

--
-- TOC entry 291 (class 1259 OID 34192)
-- Name: rarity_policy; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.rarity_policy (
    rarity inventory.item_rarity NOT NULL,
    power_ordinal smallint NOT NULL,
    CONSTRAINT rarity_policy_power_ordinal_check CHECK ((power_ordinal > 0))
);


ALTER TABLE inventory.rarity_policy OWNER TO lost_kingsland;

--
-- TOC entry 388 (class 1259 OID 46129)
-- Name: v_equipment_set_bonuses; Type: VIEW; Schema: admin; Owner: lost_kingsland
--

CREATE VIEW admin.v_equipment_set_bonuses AS
 SELECT sd.rarity,
    rp.power_ordinal AS rarity_ordinal,
    sd.set_code,
    sd.set_name,
    sd.identity_summary,
    b.pieces_required,
    b.display_text_vi,
    b.bonus_type,
    b.bonus_params,
    b.enabled
   FROM ((inventory.equipment_set_defs sd
     JOIN inventory.rarity_policy rp ON ((rp.rarity = sd.rarity)))
     JOIN inventory.equipment_set_bonuses b ON (((b.set_code)::text = (sd.set_code)::text)))
  ORDER BY rp.power_ordinal, sd.set_name, b.pieces_required;


ALTER VIEW admin.v_equipment_set_bonuses OWNER TO lost_kingsland;

--
-- TOC entry 5828 (class 0 OID 0)
-- Dependencies: 388
-- Name: VIEW v_equipment_set_bonuses; Type: COMMENT; Schema: admin; Owner: lost_kingsland
--

COMMENT ON VIEW admin.v_equipment_set_bonuses IS 'Admin read model for all 2/4/6/8-piece bonuses across the 20 current cultivation/xianxia equipment sets.';


--
-- TOC entry 290 (class 1259 OID 34177)
-- Name: equipment_affix_combinations; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.equipment_affix_combinations (
    id bigint NOT NULL,
    equipment_slot inventory.equipment_slot NOT NULL,
    combo_code character varying(96) NOT NULL,
    stat_codes character varying(64)[] NOT NULL,
    config_version_id bigint NOT NULL,
    notes text,
    CONSTRAINT equipment_affix_combinations_stat_codes_check CHECK (((cardinality(stat_codes) >= 2) AND (cardinality(stat_codes) <= 5)))
);


ALTER TABLE inventory.equipment_affix_combinations OWNER TO lost_kingsland;

--
-- TOC entry 287 (class 1259 OID 34145)
-- Name: item_defs; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.item_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    item_type character varying(48) NOT NULL,
    family_code character varying(64),
    display_name_vi character varying(160),
    image_asset_key character varying(256),
    equipment_slot inventory.equipment_slot,
    rarity inventory.item_rarity NOT NULL,
    stackable boolean DEFAULT false NOT NULL,
    max_stack bigint,
    bind_rule character varying(32) DEFAULT 'ACCOUNT'::character varying NOT NULL,
    transferable boolean DEFAULT true NOT NULL,
    tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    base_stats jsonb DEFAULT '{}'::jsonb NOT NULL,
    base_effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    salvage_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    affix_combo_code character varying(96),
    set_code character varying(96),
    set_name character varying(160)
);


ALTER TABLE inventory.item_defs OWNER TO lost_kingsland;

--
-- TOC entry 5829 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN item_defs.image_asset_key; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON COLUMN inventory.item_defs.image_asset_key IS 'Nullable stable media reference for the item image. Core gameplay does not require an image yet. Keep NULL until item artwork is produced; later resolve this key through the media/CDN layer instead of coupling gameplay rows to a provider-specific URL.';


--
-- TOC entry 5830 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN item_defs.set_code; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON COLUMN inventory.item_defs.set_code IS 'NULL = loose item; non-NULL = stable equipment set identity.';


--
-- TOC entry 5831 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN item_defs.set_name; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON COLUMN inventory.item_defs.set_name IS 'Player-facing cultivation/xianxia set name.';


--
-- TOC entry 239 (class 1259 OID 33196)
-- Name: config_versions; Type: TABLE; Schema: platform; Owner: lost_kingsland
--

CREATE TABLE platform.config_versions (
    id bigint NOT NULL,
    version_code character varying(64) NOT NULL,
    description text,
    status platform.record_status DEFAULT 'ACTIVE'::platform.record_status NOT NULL,
    effective_from timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by character varying(128)
);


ALTER TABLE platform.config_versions OWNER TO lost_kingsland;

--
-- TOC entry 386 (class 1259 OID 46107)
-- Name: v_item_catalog; Type: VIEW; Schema: admin; Owner: lost_kingsland
--

CREATE VIEW admin.v_item_catalog AS
 SELECT d.id AS item_def_id,
    d.code AS item_code,
    d.display_name_vi AS item_name,
    d.image_asset_key,
    d.item_type,
    d.family_code,
    d.equipment_slot,
    d.affix_combo_code,
    eac.stat_codes AS allowed_stat_combination,
    cardinality(eac.stat_codes) AS stat_count,
    d.rarity,
    rp.power_ordinal AS rarity_ordinal,
    d.set_code,
    d.set_name,
    sd.identity_summary AS set_identity,
    (d.set_code IS NOT NULL) AS is_set_piece,
    d.transferable,
    d.base_stats,
    d.base_effects,
    d.tags,
    cv.version_code AS config_version
   FROM ((((inventory.item_defs d
     JOIN platform.config_versions cv ON ((cv.id = d.config_version_id)))
     JOIN inventory.rarity_policy rp ON ((rp.rarity = d.rarity)))
     LEFT JOIN inventory.equipment_set_defs sd ON (((sd.set_code)::text = (d.set_code)::text)))
     LEFT JOIN inventory.equipment_affix_combinations eac ON (((eac.equipment_slot = d.equipment_slot) AND ((eac.combo_code)::text = (d.affix_combo_code)::text) AND (eac.config_version_id = d.config_version_id))))
  ORDER BY rp.power_ordinal, d.equipment_slot, d.affix_combo_code, d.display_name_vi, d.code;


ALTER VIEW admin.v_item_catalog OWNER TO lost_kingsland;

--
-- TOC entry 275 (class 1259 OID 33767)
-- Name: player_heroes; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.player_heroes (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    name public.citext NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    xp bigint DEFAULT 0 NOT NULL,
    race_code character varying(64) NOT NULL,
    path_code character varying(64) NOT NULL,
    character_config_version_id bigint NOT NULL,
    realm_code character varying(64) DEFAULT 'MORTAL'::character varying NOT NULL,
    realm_minor_stage integer DEFAULT 1 NOT NULL,
    cultivation_xp bigint DEFAULT 0 NOT NULL,
    tribulation_fail_streak integer DEFAULT 0 NOT NULL,
    sect_code character varying(64),
    sect_rank integer DEFAULT 0 NOT NULL,
    sect_reputation bigint DEFAULT 0 NOT NULL,
    active_loadout_id uuid,
    portrait_key character varying(128),
    creation_completed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT player_heroes_cultivation_xp_check CHECK ((cultivation_xp >= 0)),
    CONSTRAINT player_heroes_level_check CHECK ((level > 0)),
    CONSTRAINT player_heroes_realm_minor_stage_check CHECK (((realm_minor_stage >= 1) AND (realm_minor_stage <= 10))),
    CONSTRAINT player_heroes_sect_reputation_check CHECK ((sect_reputation >= 0)),
    CONSTRAINT player_heroes_tribulation_fail_streak_check CHECK ((tribulation_fail_streak >= 0)),
    CONSTRAINT player_heroes_xp_check CHECK ((xp >= 0))
);


ALTER TABLE hero.player_heroes OWNER TO lost_kingsland;

--
-- TOC entry 5832 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE player_heroes; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.player_heroes IS 'Greenfield v4.3 baseline: exactly one playable Hero per Player. Hero identity is pinned to a character config version; combat must consume immutable snapshots rather than reread mutable Hero state mid-fight.';


--
-- TOC entry 249 (class 1259 OID 33313)
-- Name: players; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.players (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    account_id uuid NOT NULL,
    display_name public.citext NOT NULL,
    account_level integer DEFAULT 1 NOT NULL,
    account_xp bigint DEFAULT 0 NOT NULL,
    avatar_key character varying(128),
    active_hero_id uuid,
    active_screen_key character varying(128),
    tutorial_step character varying(96),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT players_account_level_check CHECK ((account_level > 0)),
    CONSTRAINT players_account_xp_check CHECK ((account_xp >= 0))
);


ALTER TABLE identity.players OWNER TO lost_kingsland;

--
-- TOC entry 292 (class 1259 OID 34201)
-- Name: item_instances; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.item_instances (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    hero_id uuid,
    item_code character varying(96) NOT NULL,
    item_config_version_id bigint NOT NULL,
    rarity inventory.item_rarity NOT NULL,
    item_level integer DEFAULT 1 NOT NULL,
    state inventory.item_state DEFAULT 'OWNED'::inventory.item_state NOT NULL,
    durability integer,
    affixes jsonb DEFAULT '[]'::jsonb NOT NULL,
    unique_effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    acquired_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE inventory.item_instances OWNER TO lost_kingsland;

--
-- TOC entry 5833 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE item_instances; Type: COMMENT; Schema: inventory; Owner: lost_kingsland
--

COMMENT ON TABLE inventory.item_instances IS 'Equipment may be market/direct-trade eligible when item_defs.transferable=true. LISTED/LOCKED state plus optimistic version prevents equip/sell/transfer races.';


--
-- TOC entry 382 (class 1259 OID 36195)
-- Name: v_player_items; Type: VIEW; Schema: admin; Owner: lost_kingsland
--

CREATE VIEW admin.v_player_items AS
 SELECT p.id AS player_id,
    (p.display_name)::text AS player_name,
    h.id AS hero_id,
    (h.name)::text AS hero_name,
    ii.id AS item_instance_id,
    ii.item_code,
    d.display_name_vi AS item_name,
    d.image_asset_key,
    d.equipment_slot,
    ii.rarity,
    ii.item_level,
    ii.state,
    (ii.state = 'EQUIPPED'::inventory.item_state) AS is_equipped,
    ii.affixes,
    ii.unique_effects,
    ii.locked,
    ii.acquired_at,
    ii.updated_at,
    cv.version_code AS item_config_version
   FROM ((((inventory.item_instances ii
     JOIN identity.players p ON ((p.id = ii.player_id)))
     LEFT JOIN hero.player_heroes h ON ((h.id = ii.hero_id)))
     JOIN inventory.item_defs d ON ((((d.code)::text = (ii.item_code)::text) AND (d.config_version_id = ii.item_config_version_id))))
     JOIN platform.config_versions cv ON ((cv.id = ii.item_config_version_id)))
  ORDER BY p.display_name, ii.acquired_at DESC;


ALTER VIEW admin.v_player_items OWNER TO lost_kingsland;

--
-- TOC entry 5834 (class 0 OID 0)
-- Dependencies: 382
-- Name: VIEW v_player_items; Type: COMMENT; Schema: admin; Owner: lost_kingsland
--

COMMENT ON VIEW admin.v_player_items IS 'Admin read model: actual owned item instances joined to Player/Hero and item definition, including rolled affixes and image placeholder.';


--
-- TOC entry 246 (class 1259 OID 33261)
-- Name: accounts; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.accounts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    public_id uuid DEFAULT gen_random_uuid() NOT NULL,
    status character varying(32) DEFAULT 'ACTIVE'::character varying NOT NULL,
    locale character varying(16) DEFAULT 'vi-VN'::character varying NOT NULL,
    timezone character varying(64) DEFAULT 'UTC'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE identity.accounts OWNER TO lost_kingsland;

--
-- TOC entry 247 (class 1259 OID 33276)
-- Name: discord_links; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.discord_links (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    account_id uuid NOT NULL,
    discord_user_id bigint NOT NULL,
    discord_username character varying(128),
    linked_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_at timestamp with time zone,
    is_primary boolean DEFAULT true NOT NULL
);


ALTER TABLE identity.discord_links OWNER TO lost_kingsland;

--
-- TOC entry 381 (class 1259 OID 36190)
-- Name: v_players; Type: VIEW; Schema: admin; Owner: lost_kingsland
--

CREATE VIEW admin.v_players AS
 SELECT p.id AS player_id,
    p.public_display_name,
    p.account_level,
    p.account_xp,
    a.id AS account_id,
    dl.discord_user_id,
    dl.discord_username,
    h.id AS hero_id,
    h.name AS hero_name,
    h.level AS hero_level,
    h.race_code,
    h.path_code,
    h.realm_code,
    h.realm_minor_stage,
    p.created_at AS player_created_at
   FROM (((( SELECT players.id,
            (players.display_name)::text AS public_display_name,
            players.account_id,
            players.account_level,
            players.account_xp,
            players.active_hero_id,
            players.created_at
           FROM identity.players) p
     JOIN identity.accounts a ON ((a.id = p.account_id)))
     LEFT JOIN identity.discord_links dl ON (((dl.account_id = a.id) AND (dl.is_primary = true) AND (dl.revoked_at IS NULL))))
     LEFT JOIN hero.player_heroes h ON ((h.id = p.active_hero_id)))
  ORDER BY p.created_at DESC;


ALTER VIEW admin.v_players OWNER TO lost_kingsland;

--
-- TOC entry 5835 (class 0 OID 0)
-- Dependencies: 381
-- Name: VIEW v_players; Type: COMMENT; Schema: admin; Owner: lost_kingsland
--

COMMENT ON VIEW admin.v_players IS 'Admin read model: Player + Account + primary Discord link + active Hero in one row.';


--
-- TOC entry 300 (class 1259 OID 34374)
-- Name: adventure_runs; Type: TABLE; Schema: adventure; Owner: lost_kingsland
--

CREATE TABLE adventure.adventure_runs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    hero_id uuid NOT NULL,
    region_code character varying(96) NOT NULL,
    region_config_version bigint NOT NULL,
    status adventure.run_status DEFAULT 'ACTIVE'::adventure.run_status NOT NULL,
    current_node_code character varying(96),
    route_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    run_modifiers jsonb DEFAULT '[]'::jsonb NOT NULL,
    consumable_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    last_action_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE adventure.adventure_runs OWNER TO lost_kingsland;

--
-- TOC entry 302 (class 1259 OID 34423)
-- Name: energy_balances; Type: TABLE; Schema: adventure; Owner: lost_kingsland
--

CREATE TABLE adventure.energy_balances (
    player_id uuid NOT NULL,
    current_value integer DEFAULT 0 NOT NULL,
    cap_value integer NOT NULL,
    last_regen_at timestamp with time zone DEFAULT now() NOT NULL,
    regen_seconds integer NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT energy_balances_cap_value_check CHECK ((cap_value > 0)),
    CONSTRAINT energy_balances_current_value_check CHECK ((current_value >= 0)),
    CONSTRAINT energy_balances_regen_seconds_check CHECK ((regen_seconds > 0))
);


ALTER TABLE adventure.energy_balances OWNER TO lost_kingsland;

--
-- TOC entry 5836 (class 0 OID 0)
-- Dependencies: 302
-- Name: TABLE energy_balances; Type: COMMENT; Schema: adventure; Owner: lost_kingsland
--

COMMENT ON TABLE adventure.energy_balances IS 'Authoritative Energy state including cap/regen timing. ENERGY is intentionally not duplicated in economy.asset_defs.';


--
-- TOC entry 299 (class 1259 OID 34356)
-- Name: player_exploration_progress; Type: TABLE; Schema: adventure; Owner: lost_kingsland
--

CREATE TABLE adventure.player_exploration_progress (
    player_id uuid NOT NULL,
    current_floor integer DEFAULT 1 NOT NULL,
    highest_floor integer DEFAULT 1 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT player_exploration_progress_check CHECK ((highest_floor >= current_floor)),
    CONSTRAINT player_exploration_progress_current_floor_check CHECK ((current_floor >= 1)),
    CONSTRAINT player_exploration_progress_highest_floor_check CHECK ((highest_floor >= 1))
);


ALTER TABLE adventure.player_exploration_progress OWNER TO lost_kingsland;

--
-- TOC entry 298 (class 1259 OID 34339)
-- Name: player_region_progress; Type: TABLE; Schema: adventure; Owner: lost_kingsland
--

CREATE TABLE adventure.player_region_progress (
    player_id uuid NOT NULL,
    region_code character varying(96) NOT NULL,
    unlocked_at timestamp with time zone,
    highest_node_ordinal integer DEFAULT 0 NOT NULL,
    boss_kills integer DEFAULT 0 NOT NULL,
    mastery_level integer DEFAULT 0 NOT NULL,
    stars integer DEFAULT 0 NOT NULL,
    best_result_json jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE adventure.player_region_progress OWNER TO lost_kingsland;

--
-- TOC entry 301 (class 1259 OID 34410)
-- Name: run_node_states; Type: TABLE; Schema: adventure; Owner: lost_kingsland
--

CREATE TABLE adventure.run_node_states (
    run_id uuid NOT NULL,
    node_code character varying(96) NOT NULL,
    node_type adventure.node_type NOT NULL,
    state character varying(32) DEFAULT 'AVAILABLE'::character varying NOT NULL,
    encounter_snapshot jsonb,
    reward_snapshot jsonb,
    entered_at timestamp with time zone,
    resolved_at timestamp with time zone
);


ALTER TABLE adventure.run_node_states OWNER TO lost_kingsland;

--
-- TOC entry 328 (class 1259 OID 34885)
-- Name: clan_applications; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_applications (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    player_id uuid NOT NULL,
    message text,
    status character varying(32) DEFAULT 'PENDING'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    resolved_at timestamp with time zone,
    resolved_by uuid
);


ALTER TABLE clan.clan_applications OWNER TO lost_kingsland;

--
-- TOC entry 354 (class 1259 OID 35561)
-- Name: clan_boss_attempts; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_boss_attempts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_boss_id uuid NOT NULL,
    player_id uuid NOT NULL,
    hero_id uuid NOT NULL,
    attempt_no integer NOT NULL,
    reserved_at timestamp with time zone DEFAULT now() NOT NULL,
    combat_id uuid,
    phase_snapshot jsonb NOT NULL,
    damage_committed numeric(30,6) DEFAULT 0 NOT NULL,
    result_json jsonb,
    settled_at timestamp with time zone
);


ALTER TABLE clan.clan_boss_attempts OWNER TO lost_kingsland;

--
-- TOC entry 352 (class 1259 OID 35523)
-- Name: clan_boss_defs; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_boss_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    boss_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    enemy_code character varying(96) NOT NULL,
    hp_total numeric(30,6) NOT NULL,
    phase_rules jsonb NOT NULL,
    attempt_rules jsonb NOT NULL,
    rewards jsonb NOT NULL
);


ALTER TABLE clan.clan_boss_defs OWNER TO lost_kingsland;

--
-- TOC entry 353 (class 1259 OID 35538)
-- Name: clan_bosses; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_bosses (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    boss_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    status character varying(32) DEFAULT 'SCHEDULED'::character varying NOT NULL,
    opens_at timestamp with time zone NOT NULL,
    closes_at timestamp with time zone NOT NULL,
    max_hp numeric(30,6) NOT NULL,
    current_hp numeric(30,6) NOT NULL,
    current_phase integer DEFAULT 1 NOT NULL,
    phase_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    killed_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE clan.clan_bosses OWNER TO lost_kingsland;

--
-- TOC entry 339 (class 1259 OID 35099)
-- Name: clan_building_contributions; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_building_contributions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    clan_building_id uuid NOT NULL,
    player_id uuid NOT NULL,
    contribution_type character varying(48) NOT NULL,
    operation_id uuid,
    contribution_points bigint DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE clan.clan_building_contributions OWNER TO lost_kingsland;

--
-- TOC entry 337 (class 1259 OID 35053)
-- Name: clan_building_defs; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_building_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    category character varying(48) NOT NULL,
    max_level integer DEFAULT 1 NOT NULL,
    placement_mode character varying(32) DEFAULT 'NON_SPATIAL'::character varying NOT NULL,
    level_table jsonb DEFAULT '{}'::jsonb NOT NULL,
    costs jsonb DEFAULT '{}'::jsonb NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    unlock_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    status platform.record_status DEFAULT 'ACTIVE'::platform.record_status NOT NULL,
    CONSTRAINT clan_building_defs_max_level_check CHECK ((max_level > 0))
);


ALTER TABLE clan.clan_building_defs OWNER TO lost_kingsland;

--
-- TOC entry 338 (class 1259 OID 35076)
-- Name: clan_buildings; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_buildings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    building_code character varying(96) NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    progress_points bigint DEFAULT 0 NOT NULL,
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT clan_buildings_level_check CHECK ((level >= 0)),
    CONSTRAINT clan_buildings_progress_points_check CHECK ((progress_points >= 0))
);


ALTER TABLE clan.clan_buildings OWNER TO lost_kingsland;

--
-- TOC entry 333 (class 1259 OID 34979)
-- Name: clan_donations; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_donations (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    player_id uuid NOT NULL,
    tech_code character varying(96),
    operation_id uuid,
    contribution_points bigint DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE clan.clan_donations OWNER TO lost_kingsland;

--
-- TOC entry 330 (class 1259 OID 34933)
-- Name: clan_help_actions; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_help_actions (
    request_id uuid NOT NULL,
    helper_player_id uuid NOT NULL,
    reduction_seconds integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT clan_help_actions_reduction_seconds_check CHECK ((reduction_seconds > 0))
);


ALTER TABLE clan.clan_help_actions OWNER TO lost_kingsland;

--
-- TOC entry 329 (class 1259 OID 34912)
-- Name: clan_help_requests; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_help_requests (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    requester_player_id uuid NOT NULL,
    target_type character varying(32) NOT NULL,
    target_id uuid NOT NULL,
    requested_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    max_help_count integer NOT NULL,
    current_help_count integer DEFAULT 0 NOT NULL,
    max_reduction_seconds integer NOT NULL,
    applied_reduction_seconds integer DEFAULT 0 NOT NULL,
    status character varying(32) DEFAULT 'OPEN'::character varying NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE clan.clan_help_requests OWNER TO lost_kingsland;

--
-- TOC entry 326 (class 1259 OID 34853)
-- Name: clan_members; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_members (
    clan_id uuid NOT NULL,
    player_id uuid NOT NULL,
    rank clan.member_rank DEFAULT 'RECRUIT'::clan.member_rank NOT NULL,
    contribution bigint DEFAULT 0 NOT NULL,
    joined_at timestamp with time zone DEFAULT now() NOT NULL,
    last_active_at timestamp with time zone,
    probation_until timestamp with time zone
);


ALTER TABLE clan.clan_members OWNER TO lost_kingsland;

--
-- TOC entry 327 (class 1259 OID 34874)
-- Name: clan_permissions; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_permissions (
    clan_id uuid NOT NULL,
    rank clan.member_rank NOT NULL,
    permission_code character varying(96) NOT NULL,
    allowed boolean DEFAULT true NOT NULL
);


ALTER TABLE clan.clan_permissions OWNER TO lost_kingsland;

--
-- TOC entry 336 (class 1259 OID 35034)
-- Name: clan_quest_contributions; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_quest_contributions (
    clan_quest_id uuid NOT NULL,
    player_id uuid NOT NULL,
    contribution_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    eligibility boolean DEFAULT false NOT NULL
);


ALTER TABLE clan.clan_quest_contributions OWNER TO lost_kingsland;

--
-- TOC entry 334 (class 1259 OID 35003)
-- Name: clan_quest_defs; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_quest_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    quest_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    objective_json jsonb NOT NULL,
    reward_json jsonb NOT NULL,
    duration_seconds integer
);


ALTER TABLE clan.clan_quest_defs OWNER TO lost_kingsland;

--
-- TOC entry 335 (class 1259 OID 35018)
-- Name: clan_quests; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_quests (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    clan_id uuid NOT NULL,
    quest_code character varying(96) NOT NULL,
    starts_at timestamp with time zone NOT NULL,
    ends_at timestamp with time zone NOT NULL,
    progress_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    status character varying(32) DEFAULT 'ACTIVE'::character varying NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE clan.clan_quests OWNER TO lost_kingsland;

--
-- TOC entry 331 (class 1259 OID 34950)
-- Name: clan_tech_defs; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_tech_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    tech_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    branch_code character varying(32) NOT NULL,
    max_level integer NOT NULL,
    level_table jsonb NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL
);


ALTER TABLE clan.clan_tech_defs OWNER TO lost_kingsland;

--
-- TOC entry 5837 (class 0 OID 0)
-- Dependencies: 331
-- Name: TABLE clan_tech_defs; Type: COMMENT; Schema: clan; Owner: lost_kingsland
--

COMMENT ON TABLE clan.clan_tech_defs IS 'v4.0 effects may include EQUIPMENT_DROP_LEVEL_PCT. Product example: technology level 10 grants +10% generated monster equipment item level; this does not raise rarity chance.';


--
-- TOC entry 332 (class 1259 OID 34966)
-- Name: clan_technology; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clan_technology (
    clan_id uuid NOT NULL,
    tech_code character varying(96) NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    progress_points bigint DEFAULT 0 NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE clan.clan_technology OWNER TO lost_kingsland;

--
-- TOC entry 325 (class 1259 OID 34821)
-- Name: clans; Type: TABLE; Schema: clan; Owner: lost_kingsland
--

CREATE TABLE clan.clans (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    public_id uuid DEFAULT gen_random_uuid() NOT NULL,
    name public.citext NOT NULL,
    tag public.citext NOT NULL,
    leader_player_id uuid NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    xp bigint DEFAULT 0 NOT NULL,
    member_cap integer DEFAULT 50 NOT NULL,
    join_policy character varying(32) DEFAULT 'APPLICATION'::character varying NOT NULL,
    description text,
    banner_key character varying(128),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE clan.clans OWNER TO lost_kingsland;

--
-- TOC entry 304 (class 1259 OID 34472)
-- Name: actor_snapshots; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.actor_snapshots (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    combat_id uuid NOT NULL,
    actor_key character varying(128) NOT NULL,
    actor_type combat.actor_type NOT NULL,
    source_entity_id uuid,
    level integer NOT NULL,
    realm_code character varying(64),
    realm_minor_stage integer,
    tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    stats jsonb NOT NULL,
    loadout jsonb DEFAULT '{}'::jsonb NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    initial_hp numeric(24,6) NOT NULL,
    initial_resource jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE combat.actor_snapshots OWNER TO lost_kingsland;

--
-- TOC entry 305 (class 1259 OID 34491)
-- Name: combat_actions; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.combat_actions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    combat_id uuid NOT NULL,
    round_number integer NOT NULL,
    sequence_no integer NOT NULL,
    actor_key character varying(128) NOT NULL,
    target_key character varying(128),
    action_type character varying(48) NOT NULL,
    action_code character varying(96),
    command_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    expected_state_version bigint,
    submitted_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE combat.combat_actions OWNER TO lost_kingsland;

--
-- TOC entry 308 (class 1259 OID 34526)
-- Name: combat_events; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.combat_events (
    id bigint NOT NULL,
    combat_id uuid NOT NULL,
    sequence_no bigint NOT NULL,
    round_number integer NOT NULL,
    phase character varying(48) NOT NULL,
    actor_key character varying(128),
    target_key character varying(128),
    event_type character varying(96) NOT NULL,
    source_code character varying(128),
    numeric_payload jsonb DEFAULT '{}'::jsonb NOT NULL,
    detail_payload jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE combat.combat_events OWNER TO lost_kingsland;

--
-- TOC entry 5838 (class 0 OID 0)
-- Dependencies: 308
-- Name: TABLE combat_events; Type: COMMENT; Schema: combat; Owner: lost_kingsland
--

COMMENT ON TABLE combat.combat_events IS 'Tier C deterministic combat events. (combat_id, sequence_no) is globally unique for exact replay. Final settlement/rewards persist as Tier B/A operations.';


--
-- TOC entry 307 (class 1259 OID 34525)
-- Name: combat_events_id_seq; Type: SEQUENCE; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE combat.combat_events ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME combat.combat_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 303 (class 1259 OID 34439)
-- Name: combat_instances; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.combat_instances (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid,
    hero_id uuid,
    source_type character varying(48) NOT NULL,
    source_id uuid,
    profile_code combat.profile_code NOT NULL,
    execution_mode combat.execution_mode DEFAULT 'MANUAL_TURN'::combat.execution_mode NOT NULL,
    auto_policy_version character varying(64),
    combat_version character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    seed_ref character varying(128) NOT NULL,
    rng_algorithm_version character varying(48) DEFAULT 'XOSHIRO256SS_V1'::character varying NOT NULL,
    seed_commitment character varying(128),
    input_snapshot_hash character varying(128),
    replay_manifest jsonb DEFAULT '{}'::jsonb NOT NULL,
    status combat.combat_status DEFAULT 'CREATED'::combat.combat_status NOT NULL,
    round_number integer DEFAULT 0 NOT NULL,
    current_actor_ref character varying(128),
    summary_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    started_at timestamp with time zone,
    ended_at timestamp with time zone,
    settled_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT combat_instances_check CHECK (((execution_mode <> 'AUTO_POLICY'::combat.execution_mode) OR (auto_policy_version IS NOT NULL)))
);


ALTER TABLE combat.combat_instances OWNER TO lost_kingsland;

--
-- TOC entry 311 (class 1259 OID 34564)
-- Name: combat_settlements; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.combat_settlements (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    combat_id uuid NOT NULL,
    outcome character varying(32) NOT NULL,
    reward_operation_id uuid,
    score_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    contribution_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    settled_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE combat.combat_settlements OWNER TO lost_kingsland;

--
-- TOC entry 310 (class 1259 OID 34545)
-- Name: rng_draws; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.rng_draws (
    id bigint NOT NULL,
    combat_id uuid NOT NULL,
    stream_code character varying(32) NOT NULL,
    draw_index bigint NOT NULL,
    event_sequence_no bigint,
    value_numeric numeric(24,18),
    detail_payload jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT rng_draws_draw_index_check CHECK ((draw_index >= 0)),
    CONSTRAINT rng_draws_stream_code_check CHECK (((stream_code)::text = ANY ((ARRAY['DAMAGE_VARIANCE'::character varying, 'CRIT'::character varying, 'STATUS'::character varying, 'PROC'::character varying, 'ENEMY_PATTERN'::character varying])::text[])))
);


ALTER TABLE combat.rng_draws OWNER TO lost_kingsland;

--
-- TOC entry 5839 (class 0 OID 0)
-- Dependencies: 310
-- Name: TABLE rng_draws; Type: COMMENT; Schema: combat; Owner: lost_kingsland
--

COMMENT ON TABLE combat.rng_draws IS 'Optional deterministic RNG audit material by independent stream and draw index. Combat event detail remains replay-authoritative and must carry stream/draw references where random resolution occurs.';


--
-- TOC entry 309 (class 1259 OID 34544)
-- Name: rng_draws_id_seq; Type: SEQUENCE; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE combat.rng_draws ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME combat.rng_draws_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 306 (class 1259 OID 34508)
-- Name: status_instances; Type: TABLE; Schema: combat; Owner: lost_kingsland
--

CREATE TABLE combat.status_instances (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    combat_id uuid NOT NULL,
    target_key character varying(128) NOT NULL,
    source_key character varying(128),
    status_code character varying(96) NOT NULL,
    status_version bigint NOT NULL,
    stacks integer DEFAULT 1 NOT NULL,
    remaining_rounds integer,
    potency_snapshot numeric(24,6),
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    applied_round integer NOT NULL,
    expires_round integer,
    active boolean DEFAULT true NOT NULL
);


ALTER TABLE combat.status_instances OWNER TO lost_kingsland;

--
-- TOC entry 340 (class 1259 OID 35128)
-- Name: commander_defs; Type: TABLE; Schema: commander; Owner: lost_kingsland
--

CREATE TABLE commander.commander_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    rarity_code character varying(32),
    archetype_tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    role_tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    base_profile jsonb DEFAULT '{}'::jsonb NOT NULL,
    skill_profile jsonb DEFAULT '[]'::jsonb NOT NULL,
    talent_profile jsonb DEFAULT '{}'::jsonb NOT NULL,
    acquisition_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    max_level integer DEFAULT 5000 NOT NULL,
    gameplay_enabled boolean DEFAULT true NOT NULL,
    status platform.record_status DEFAULT 'ACTIVE'::platform.record_status NOT NULL,
    CONSTRAINT commander_defs_max_level_check CHECK ((max_level = 5000))
);


ALTER TABLE commander.commander_defs OWNER TO lost_kingsland;

--
-- TOC entry 5840 (class 0 OID 0)
-- Dependencies: 340
-- Name: TABLE commander_defs; Type: COMMENT; Schema: commander; Owner: lost_kingsland
--

COMMENT ON TABLE commander.commander_defs IS 'v4.0 Commander catalog is gameplay-active. Core rule: Commander level is 1..5000; march/combat effects remain versioned config, not hidden damage multipliers.';


--
-- TOC entry 342 (class 1259 OID 35184)
-- Name: commander_presets; Type: TABLE; Schema: commander; Owner: lost_kingsland
--

CREATE TABLE commander.commander_presets (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    name character varying(64) NOT NULL,
    primary_commander_id uuid,
    secondary_commander_id uuid,
    context_code character varying(48) DEFAULT 'MARCH'::character varying NOT NULL,
    preset_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    active boolean DEFAULT false NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE commander.commander_presets OWNER TO lost_kingsland;

--
-- TOC entry 343 (class 1259 OID 35215)
-- Name: level_up_events; Type: TABLE; Schema: commander; Owner: lost_kingsland
--

CREATE TABLE commander.level_up_events (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_commander_id uuid NOT NULL,
    player_id uuid NOT NULL,
    from_level integer NOT NULL,
    to_level integer NOT NULL,
    gold_cost numeric(30,0) NOT NULL,
    ledger_operation_id uuid NOT NULL,
    idempotency_key character varying(160) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT level_up_events_check CHECK ((to_level = (from_level + 1))),
    CONSTRAINT level_up_events_check1 CHECK ((gold_cost = ((1000 + (100 * (from_level - 1))))::numeric)),
    CONSTRAINT level_up_events_from_level_check CHECK (((from_level >= 1) AND (from_level <= 4999))),
    CONSTRAINT level_up_events_gold_cost_check CHECK ((gold_cost > (0)::numeric)),
    CONSTRAINT level_up_events_to_level_check CHECK (((to_level >= 2) AND (to_level <= 5000)))
);


ALTER TABLE commander.level_up_events OWNER TO lost_kingsland;

--
-- TOC entry 5841 (class 0 OID 0)
-- Dependencies: 343
-- Name: TABLE level_up_events; Type: COMMENT; Schema: commander; Owner: lost_kingsland
--

COMMENT ON TABLE commander.level_up_events IS 'v4.0 Gold sink: upgrading Commander L->L+1 costs 1000 + 100*(L-1); max level 5000.';


--
-- TOC entry 341 (class 1259 OID 35153)
-- Name: player_commanders; Type: TABLE; Schema: commander; Owner: lost_kingsland
--

CREATE TABLE commander.player_commanders (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    commander_code character varying(96) NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    xp bigint DEFAULT 0 NOT NULL,
    gold_spent_total numeric(30,0) DEFAULT 0 NOT NULL,
    star_level integer DEFAULT 1 NOT NULL,
    skill_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    talent_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    equipment_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    status commander.commander_status DEFAULT 'OWNED'::commander.commander_status NOT NULL,
    acquired_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT player_commanders_gold_spent_total_check CHECK ((gold_spent_total >= (0)::numeric)),
    CONSTRAINT player_commanders_level_check CHECK (((level >= 1) AND (level <= 5000))),
    CONSTRAINT player_commanders_star_level_check CHECK ((star_level > 0)),
    CONSTRAINT player_commanders_xp_check CHECK ((xp >= 0))
);


ALTER TABLE commander.player_commanders OWNER TO lost_kingsland;

--
-- TOC entry 5842 (class 0 OID 0)
-- Dependencies: 341
-- Name: TABLE player_commanders; Type: COMMENT; Schema: commander; Owner: lost_kingsland
--

COMMENT ON TABLE commander.player_commanders IS 'Commander ownership state is separate from the Lost Kingsland Hero/Cultivation character. v4.0 max level is 5000 and upgrades spend Gold through commander.level_up_events.';


--
-- TOC entry 371 (class 1259 OID 35975)
-- Name: entitlements; Type: TABLE; Schema: commerce; Owner: lost_kingsland
--

CREATE TABLE commerce.entitlements (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    entitlement_code character varying(96) NOT NULL,
    source_payment_id uuid,
    granted_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone,
    revoked_at timestamp with time zone,
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE commerce.entitlements OWNER TO lost_kingsland;

--
-- TOC entry 368 (class 1259 OID 35906)
-- Name: offer_defs; Type: TABLE; Schema: commerce; Owner: lost_kingsland
--

CREATE TABLE commerce.offer_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    offer_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    product_type character varying(48) NOT NULL,
    eligibility_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_bundle jsonb NOT NULL,
    purchase_limits jsonb DEFAULT '{}'::jsonb NOT NULL,
    sku_map jsonb DEFAULT '{}'::jsonb NOT NULL,
    status platform.record_status DEFAULT 'ACTIVE'::platform.record_status NOT NULL
);


ALTER TABLE commerce.offer_defs OWNER TO lost_kingsland;

--
-- TOC entry 369 (class 1259 OID 35927)
-- Name: offer_instances; Type: TABLE; Schema: commerce; Owner: lost_kingsland
--

CREATE TABLE commerce.offer_instances (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    offer_def_id uuid NOT NULL,
    offer_code character varying(96) NOT NULL,
    price_sku character varying(128) NOT NULL,
    starts_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone,
    eligibility_snapshot jsonb NOT NULL,
    purchase_count integer DEFAULT 0 NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT offer_instances_purchase_count_check CHECK ((purchase_count >= 0))
);


ALTER TABLE commerce.offer_instances OWNER TO lost_kingsland;

--
-- TOC entry 370 (class 1259 OID 35949)
-- Name: payments; Type: TABLE; Schema: commerce; Owner: lost_kingsland
--

CREATE TABLE commerce.payments (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    platform character varying(32) NOT NULL,
    provider_event_id character varying(160),
    external_txn_id character varying(160),
    offer_instance_id uuid,
    amount_minor bigint NOT NULL,
    currency character varying(3) NOT NULL,
    status commerce.payment_status DEFAULT 'RECEIVED'::commerce.payment_status NOT NULL,
    receipt_hash character varying(128),
    entitlement_operation_id uuid,
    received_at timestamp with time zone DEFAULT now() NOT NULL,
    validated_at timestamp with time zone,
    settled_at timestamp with time zone,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    CONSTRAINT payments_amount_minor_check CHECK ((amount_minor > 0))
);


ALTER TABLE commerce.payments OWNER TO lost_kingsland;

--
-- TOC entry 372 (class 1259 OID 35995)
-- Name: refunds; Type: TABLE; Schema: commerce; Owner: lost_kingsland
--

CREATE TABLE commerce.refunds (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    payment_id uuid NOT NULL,
    provider_refund_id character varying(160),
    amount_minor bigint NOT NULL,
    reason_code character varying(64),
    idempotency_key character varying(160) NOT NULL,
    status character varying(32) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    resolved_at timestamp with time zone,
    CONSTRAINT refunds_amount_minor_check CHECK ((amount_minor > 0))
);


ALTER TABLE commerce.refunds OWNER TO lost_kingsland;

--
-- TOC entry 358 (class 1259 OID 35657)
-- Name: arena_matches; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.arena_matches (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    season_id uuid,
    attacker_player_id uuid NOT NULL,
    defender_player_id uuid NOT NULL,
    defense_snapshot_id uuid NOT NULL,
    combat_id uuid,
    attacker_rating_before integer NOT NULL,
    defender_rating_before integer NOT NULL,
    attacker_rating_after integer,
    defender_rating_after integer,
    result character varying(16),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    settled_at timestamp with time zone
);


ALTER TABLE competitive.arena_matches OWNER TO lost_kingsland;

--
-- TOC entry 356 (class 1259 OID 35612)
-- Name: arena_profiles; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.arena_profiles (
    player_id uuid NOT NULL,
    rating integer DEFAULT 1000 NOT NULL,
    mmr integer DEFAULT 1000 NOT NULL,
    wins integer DEFAULT 0 NOT NULL,
    losses integer DEFAULT 0 NOT NULL,
    season_id uuid,
    defense_snapshot_id uuid,
    attempts_used integer DEFAULT 0 NOT NULL,
    attempts_reset_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE competitive.arena_profiles OWNER TO lost_kingsland;

--
-- TOC entry 359 (class 1259 OID 35689)
-- Name: clan_sieges; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.clan_sieges (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    season_id uuid,
    clan_a_id uuid NOT NULL,
    clan_b_id uuid NOT NULL,
    status character varying(32) DEFAULT 'MATCHED'::character varying NOT NULL,
    roster_lock_at timestamp with time zone NOT NULL,
    opens_at timestamp with time zone NOT NULL,
    closes_at timestamp with time zone NOT NULL,
    clan_a_score numeric(24,4) DEFAULT 0 NOT NULL,
    clan_b_score numeric(24,4) DEFAULT 0 NOT NULL,
    rules_snapshot jsonb NOT NULL,
    winner_clan_id uuid,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE competitive.clan_sieges OWNER TO lost_kingsland;

--
-- TOC entry 357 (class 1259 OID 35633)
-- Name: defense_snapshots; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.defense_snapshots (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    hero_id uuid NOT NULL,
    snapshot_json jsonb NOT NULL,
    combat_power_estimate numeric(24,4),
    ai_policy_version character varying(64),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    valid_until timestamp with time zone,
    hash character varying(128) NOT NULL
);


ALTER TABLE competitive.defense_snapshots OWNER TO lost_kingsland;

--
-- TOC entry 5843 (class 0 OID 0)
-- Dependencies: 357
-- Name: TABLE defense_snapshots; Type: COMMENT; Schema: competitive; Owner: lost_kingsland
--

COMMENT ON TABLE competitive.defense_snapshots IS 'Immutable-ish snapshot used by async PvP so Discord latency/current defender edits do not alter an ongoing attack.';


--
-- TOC entry 355 (class 1259 OID 35593)
-- Name: seasons; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.seasons (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    season_code character varying(64) NOT NULL,
    name_key character varying(128) NOT NULL,
    status competitive.season_status DEFAULT 'DRAFT'::competitive.season_status NOT NULL,
    starts_at timestamp with time zone,
    conflict_at timestamp with time zone,
    settlement_at timestamp with time zone,
    closes_at timestamp with time zone,
    config_version_id bigint NOT NULL,
    reset_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE competitive.seasons OWNER TO lost_kingsland;

--
-- TOC entry 361 (class 1259 OID 35749)
-- Name: siege_attacks; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.siege_attacks (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    siege_id uuid NOT NULL,
    attacker_player_id uuid NOT NULL,
    defender_player_id uuid NOT NULL,
    defense_snapshot_id uuid NOT NULL,
    attack_token_no integer NOT NULL,
    combat_id uuid,
    result character varying(16),
    score numeric(24,4) DEFAULT 0 NOT NULL,
    objective_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    settled_at timestamp with time zone
);


ALTER TABLE competitive.siege_attacks OWNER TO lost_kingsland;

--
-- TOC entry 360 (class 1259 OID 35721)
-- Name: siege_rosters; Type: TABLE; Schema: competitive; Owner: lost_kingsland
--

CREATE TABLE competitive.siege_rosters (
    siege_id uuid NOT NULL,
    clan_id uuid NOT NULL,
    player_id uuid NOT NULL,
    defense_snapshot_id uuid NOT NULL,
    node_key character varying(64) NOT NULL,
    fortification_json jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE competitive.siege_rosters OWNER TO lost_kingsland;

--
-- TOC entry 258 (class 1259 OID 33455)
-- Name: affinity_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.affinity_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    resonance_curve jsonb DEFAULT '{}'::jsonb NOT NULL,
    tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL
);


ALTER TABLE content.affinity_defs OWNER TO lost_kingsland;

--
-- TOC entry 256 (class 1259 OID 33417)
-- Name: bloodline_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.bloodline_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    race_code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    tier integer DEFAULT 1 NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    unlock_rule jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE content.bloodline_defs OWNER TO lost_kingsland;

--
-- TOC entry 272 (class 1259 OID 33715)
-- Name: building_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.building_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    max_level integer NOT NULL,
    level_table jsonb NOT NULL
);


ALTER TABLE content.building_defs OWNER TO lost_kingsland;

--
-- TOC entry 274 (class 1259 OID 33748)
-- Name: combat_profiles; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.combat_profiles (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    profile_code combat.profile_code NOT NULL,
    config_version_id bigint NOT NULL,
    crit_cap numeric(8,6) NOT NULL,
    crit_damage_cap numeric(8,4),
    penetration_cap numeric(8,6),
    realm_pressure_cap numeric(8,6),
    healing_modifier numeric(8,4) DEFAULT 1 NOT NULL,
    shield_modifier numeric(8,4) DEFAULT 1 NOT NULL,
    cc_modifier numeric(8,4) DEFAULT 1 NOT NULL,
    constants jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE content.combat_profiles OWNER TO lost_kingsland;

--
-- TOC entry 269 (class 1259 OID 33662)
-- Name: enemy_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.enemy_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    enemy_type character varying(32) DEFAULT 'NORMAL'::character varying NOT NULL,
    name_key character varying(128) NOT NULL,
    base_stats jsonb NOT NULL,
    skills jsonb DEFAULT '[]'::jsonb NOT NULL,
    ai_policy jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_table_code character varying(96),
    tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL
);


ALTER TABLE content.enemy_defs OWNER TO lost_kingsland;

--
-- TOC entry 260 (class 1259 OID 33495)
-- Name: exploration_floor_profiles; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.exploration_floor_profiles (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    config_version_id bigint NOT NULL,
    min_floor integer NOT NULL,
    max_floor integer,
    max_natural_rarity inventory.item_rarity NOT NULL,
    rarity_weights jsonb DEFAULT '{}'::jsonb NOT NULL,
    item_level_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    monster_profile jsonb DEFAULT '{}'::jsonb NOT NULL,
    CONSTRAINT exploration_floor_profiles_check CHECK (((max_floor IS NULL) OR (max_floor >= min_floor))),
    CONSTRAINT exploration_floor_profiles_min_floor_check CHECK ((min_floor >= 1))
);


ALTER TABLE content.exploration_floor_profiles OWNER TO lost_kingsland;

--
-- TOC entry 5844 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE exploration_floor_profiles; Type: COMMENT; Schema: content; Owner: lost_kingsland
--

COMMENT ON TABLE content.exploration_floor_profiles IS 'Floor milestones 25/50/100/150 must raise high-rarity access/probability through config. The recipient market gate uses max_natural_rarity from the current eligible floor profile.';


--
-- TOC entry 263 (class 1259 OID 33538)
-- Name: march_slot_unlock_rules; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.march_slot_unlock_rules (
    id bigint NOT NULL,
    config_version_id bigint NOT NULL,
    city_hall_level_min integer NOT NULL,
    max_march_slots smallint NOT NULL,
    CONSTRAINT march_slot_unlock_rules_city_hall_level_min_check CHECK ((city_hall_level_min >= 1)),
    CONSTRAINT march_slot_unlock_rules_max_march_slots_check CHECK (((max_march_slots >= 1) AND (max_march_slots <= 5)))
);


ALTER TABLE content.march_slot_unlock_rules OWNER TO lost_kingsland;

--
-- TOC entry 5845 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE march_slot_unlock_rules; Type: COMMENT; Schema: content; Owner: lost_kingsland
--

COMMENT ON TABLE content.march_slot_unlock_rules IS 'v4.0 required thresholds include City Hall Lv8=>3 slots, Lv17=>4, Lv23=>5. The pre-Lv8 baseline remains configuration-owned until product locks it.';


--
-- TOC entry 262 (class 1259 OID 33537)
-- Name: march_slot_unlock_rules_id_seq; Type: SEQUENCE; Schema: content; Owner: lost_kingsland
--

ALTER TABLE content.march_slot_unlock_rules ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME content.march_slot_unlock_rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 261 (class 1259 OID 33515)
-- Name: monster_reward_profiles; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.monster_reward_profiles (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    profile_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    guaranteed_equipment_count smallint DEFAULT 1 NOT NULL,
    gold_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    sp_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    construction_resource_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    equipment_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    crafting_choice_material_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    CONSTRAINT monster_reward_profiles_guaranteed_equipment_count_check CHECK ((guaranteed_equipment_count >= 1))
);


ALTER TABLE content.monster_reward_profiles OWNER TO lost_kingsland;

--
-- TOC entry 271 (class 1259 OID 33698)
-- Name: node_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.node_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    region_def_id uuid NOT NULL,
    node_code character varying(96) NOT NULL,
    node_type adventure.node_type NOT NULL,
    ordinal integer NOT NULL,
    encounter_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    route_choices jsonb DEFAULT '[]'::jsonb NOT NULL,
    reward_table_code character varying(96)
);


ALTER TABLE content.node_defs OWNER TO lost_kingsland;

--
-- TOC entry 257 (class 1259 OID 33435)
-- Name: path_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.path_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    resource_type character varying(64),
    base_stats jsonb DEFAULT '{}'::jsonb NOT NULL,
    starting_kit jsonb DEFAULT '{}'::jsonb NOT NULL,
    starting_technique_code character varying(96),
    talent_affinity jsonb DEFAULT '{}'::jsonb NOT NULL,
    display_metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    rules jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE content.path_defs OWNER TO lost_kingsland;

--
-- TOC entry 267 (class 1259 OID 33614)
-- Name: path_starting_techniques; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.path_starting_techniques (
    path_code character varying(64) NOT NULL,
    technique_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    selection_order smallint DEFAULT 1 NOT NULL,
    is_default boolean DEFAULT true NOT NULL,
    CONSTRAINT path_starting_techniques_selection_order_check CHECK ((selection_order > 0))
);


ALTER TABLE content.path_starting_techniques OWNER TO lost_kingsland;

--
-- TOC entry 265 (class 1259 OID 33570)
-- Name: profession_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.profession_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    rules jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE content.profession_defs OWNER TO lost_kingsland;

--
-- TOC entry 255 (class 1259 OID 33397)
-- Name: race_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.race_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    description_key character varying(128),
    base_effects jsonb DEFAULT '[]'::jsonb NOT NULL,
    passive_metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    affinity_metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    racial_technique_code character varying(96),
    lore_metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    status platform.record_status DEFAULT 'ACTIVE'::platform.record_status NOT NULL
);


ALTER TABLE content.race_defs OWNER TO lost_kingsland;

--
-- TOC entry 259 (class 1259 OID 33472)
-- Name: realm_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.realm_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    ordinal integer NOT NULL,
    minor_stage_count integer DEFAULT 10 NOT NULL,
    base_stat_budget jsonb DEFAULT '{}'::jsonb NOT NULL,
    unlocks jsonb DEFAULT '[]'::jsonb NOT NULL,
    breakthrough_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    base_tribulation_chance numeric(8,6),
    CONSTRAINT realm_defs_base_tribulation_chance_check CHECK (((base_tribulation_chance IS NULL) OR ((base_tribulation_chance >= (0)::numeric) AND (base_tribulation_chance <= (1)::numeric)))),
    CONSTRAINT realm_defs_minor_stage_count_check CHECK ((minor_stage_count = 10))
);


ALTER TABLE content.realm_defs OWNER TO lost_kingsland;

--
-- TOC entry 270 (class 1259 OID 33681)
-- Name: region_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.region_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    ordinal integer NOT NULL,
    theme_key character varying(128),
    unlock_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    modifiers jsonb DEFAULT '[]'::jsonb NOT NULL,
    loot_profile_code character varying(96)
);


ALTER TABLE content.region_defs OWNER TO lost_kingsland;

--
-- TOC entry 273 (class 1259 OID 33730)
-- Name: research_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.research_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    tree_code character varying(32) NOT NULL,
    max_level integer DEFAULT 1 NOT NULL,
    prerequisites jsonb DEFAULT '[]'::jsonb NOT NULL,
    level_table jsonb NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL
);


ALTER TABLE content.research_defs OWNER TO lost_kingsland;

--
-- TOC entry 264 (class 1259 OID 33552)
-- Name: sect_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.sect_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    name_key character varying(128) NOT NULL,
    philosophy_tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    join_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    leave_rule jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE content.sect_defs OWNER TO lost_kingsland;

--
-- TOC entry 254 (class 1259 OID 33388)
-- Name: tags; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.tags (
    id bigint NOT NULL,
    tag_code character varying(64) NOT NULL,
    category character varying(64),
    description text
);


ALTER TABLE content.tags OWNER TO lost_kingsland;

--
-- TOC entry 253 (class 1259 OID 33387)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: content; Owner: lost_kingsland
--

ALTER TABLE content.tags ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME content.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 266 (class 1259 OID 33586)
-- Name: technique_defs; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.technique_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    technique_type character varying(32) NOT NULL,
    name_key character varying(128) NOT NULL,
    max_level integer DEFAULT 1 NOT NULL,
    tags character varying(64)[] DEFAULT '{}'::character varying[] NOT NULL,
    martial_scaling numeric(10,4) DEFAULT 0 NOT NULL,
    mystic_scaling numeric(10,4) DEFAULT 0 NOT NULL,
    flat_power numeric(18,4) DEFAULT 0 NOT NULL,
    skill_coefficient numeric(10,4) DEFAULT 1 NOT NULL,
    damage_channel combat.damage_channel,
    resource_cost jsonb DEFAULT '{}'::jsonb NOT NULL,
    cooldown_rounds integer DEFAULT 0 NOT NULL,
    effect_list jsonb DEFAULT '[]'::jsonb NOT NULL,
    unlock_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    profile_scaling jsonb DEFAULT '{}'::jsonb NOT NULL,
    CONSTRAINT technique_defs_max_level_check CHECK ((max_level > 0)),
    CONSTRAINT technique_defs_technique_type_check CHECK (((technique_type)::text = ANY ((ARRAY['COMBAT_SKILL'::character varying, 'PASSIVE_ART'::character varying, 'CULTIVATION_ART'::character varying, 'SECRET_ART'::character varying])::text[])))
);


ALTER TABLE content.technique_defs OWNER TO lost_kingsland;

--
-- TOC entry 268 (class 1259 OID 33647)
-- Name: technique_tag_links; Type: TABLE; Schema: content; Owner: lost_kingsland
--

CREATE TABLE content.technique_tag_links (
    technique_def_id uuid NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE content.technique_tag_links OWNER TO lost_kingsland;

--
-- TOC entry 318 (class 1259 OID 34711)
-- Name: asset_defs; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.asset_defs (
    code character varying(64) NOT NULL,
    asset_type character varying(32) NOT NULL,
    integrity_tier platform.integrity_tier NOT NULL,
    precision_scale integer DEFAULT 0 NOT NULL,
    transferable boolean DEFAULT false NOT NULL,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE economy.asset_defs OWNER TO lost_kingsland;

--
-- TOC entry 5846 (class 0 OID 0)
-- Dependencies: 318
-- Name: TABLE asset_defs; Type: COMMENT; Schema: economy; Owner: lost_kingsland
--

COMMENT ON TABLE economy.asset_defs IS 'v4.0 expected gameplay assets include GOLD, SKILL_POINT and construction resources. CULTIVATION_QI is the canonical internal Linh khí asset/progression currency; Mystic Power is MYS and never SP.';


--
-- TOC entry 324 (class 1259 OID 34804)
-- Name: inventory_operations; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.inventory_operations (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    operation_type character varying(64) NOT NULL,
    source_type character varying(64) NOT NULL,
    source_id character varying(128),
    idempotency_key character varying(160) NOT NULL,
    before_hash character varying(128),
    after_hash character varying(128),
    detail_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE economy.inventory_operations OWNER TO lost_kingsland;

--
-- TOC entry 319 (class 1259 OID 34721)
-- Name: ledger_accounts; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.ledger_accounts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    owner_scope platform.entity_scope NOT NULL,
    owner_id uuid,
    asset_code character varying(64) NOT NULL,
    available_balance numeric(30,8) DEFAULT 0 NOT NULL,
    reserved_balance numeric(30,8) DEFAULT 0 NOT NULL,
    sequence_no bigint DEFAULT 0 NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT ledger_accounts_check CHECK ((((owner_scope = 'SYSTEM'::platform.entity_scope) AND (owner_id IS NULL)) OR ((owner_scope <> 'SYSTEM'::platform.entity_scope) AND (owner_id IS NOT NULL))))
);


ALTER TABLE economy.ledger_accounts OWNER TO lost_kingsland;

--
-- TOC entry 5847 (class 0 OID 0)
-- Dependencies: 319
-- Name: TABLE ledger_accounts; Type: COMMENT; Schema: economy; Owner: lost_kingsland
--

COMMENT ON TABLE economy.ledger_accounts IS 'Authoritative balance store for ledger-owned assets such as ESSENCE, CULTIVATION_QI and SKILL_POINT; do not duplicate these balances on hero rows.';


--
-- TOC entry 322 (class 1259 OID 34759)
-- Name: ledger_entries; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.ledger_entries (
    id bigint NOT NULL,
    operation_id uuid NOT NULL,
    ledger_account_id uuid NOT NULL,
    account_sequence bigint NOT NULL,
    delta_available numeric(30,8) DEFAULT 0 NOT NULL,
    delta_reserved numeric(30,8) DEFAULT 0 NOT NULL,
    balance_before numeric(30,8) NOT NULL,
    balance_after numeric(30,8) NOT NULL,
    entry_role character varying(32) DEFAULT 'PRIMARY'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE economy.ledger_entries OWNER TO lost_kingsland;

--
-- TOC entry 321 (class 1259 OID 34758)
-- Name: ledger_entries_id_seq; Type: SEQUENCE; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE economy.ledger_entries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME economy.ledger_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 320 (class 1259 OID 34740)
-- Name: ledger_operations; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.ledger_operations (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    operation_type character varying(96) NOT NULL,
    actor_type character varying(64),
    actor_id uuid,
    source_type character varying(64) NOT NULL,
    source_id character varying(128),
    reason_code character varying(96) NOT NULL,
    idempotency_key character varying(160) NOT NULL,
    config_version_id bigint,
    request_id character varying(128),
    status character varying(32) DEFAULT 'COMMITTED'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE economy.ledger_operations OWNER TO lost_kingsland;

--
-- TOC entry 5848 (class 0 OID 0)
-- Dependencies: 320
-- Name: TABLE ledger_operations; Type: COMMENT; Schema: economy; Owner: lost_kingsland
--

COMMENT ON TABLE economy.ledger_operations IS 'One business operation identity. Retry must reuse idempotency key and never double-grant assets; NULL actor IDs are NOT DISTINCT for uniqueness.';


--
-- TOC entry 323 (class 1259 OID 34782)
-- Name: reward_grants; Type: TABLE; Schema: economy; Owner: lost_kingsland
--

CREATE TABLE economy.reward_grants (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    grant_type character varying(64) NOT NULL,
    source_type character varying(64) NOT NULL,
    source_id character varying(128) NOT NULL,
    eligibility_key character varying(160),
    reward_bundle jsonb NOT NULL,
    operation_id uuid,
    status character varying(32) DEFAULT 'PENDING'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    granted_at timestamp with time zone
);


ALTER TABLE economy.reward_grants OWNER TO lost_kingsland;

--
-- TOC entry 285 (class 1259 OID 34063)
-- Name: breakthrough_attempts; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.breakthrough_attempts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    hero_id uuid NOT NULL,
    from_realm_code character varying(64) NOT NULL,
    to_realm_code character varying(64) NOT NULL,
    from_stage smallint DEFAULT 10 NOT NULL,
    to_stage smallint,
    xp_before bigint DEFAULT 0 NOT NULL,
    xp_after bigint,
    fail_streak_before integer DEFAULT 0 NOT NULL,
    fail_streak_after integer,
    base_success_chance numeric(8,6) NOT NULL,
    pity_bonus numeric(8,6) DEFAULT 0 NOT NULL,
    booster_bonus numeric(8,6) DEFAULT 0 NOT NULL,
    final_success_chance numeric(8,6) NOT NULL,
    rng_roll numeric(8,6),
    protection_used boolean DEFAULT false NOT NULL,
    booster_used boolean DEFAULT false NOT NULL,
    protection_item_code character varying(96),
    booster_item_code character varying(96),
    preparation_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    combat_instance_id uuid,
    result character varying(32),
    consume_operation_id uuid,
    pity_progress numeric(12,6) DEFAULT 0 NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    resolved_at timestamp with time zone,
    config_version_id bigint NOT NULL,
    CONSTRAINT breakthrough_attempts_base_success_chance_check CHECK (((base_success_chance >= (0)::numeric) AND (base_success_chance <= (1)::numeric))),
    CONSTRAINT breakthrough_attempts_booster_bonus_check CHECK (((booster_bonus >= (0)::numeric) AND (booster_bonus <= (1)::numeric))),
    CONSTRAINT breakthrough_attempts_check CHECK ((final_success_chance = LEAST((1)::numeric, GREATEST((0)::numeric, ((base_success_chance + pity_bonus) + booster_bonus))))),
    CONSTRAINT breakthrough_attempts_fail_streak_after_check CHECK (((fail_streak_after IS NULL) OR (fail_streak_after >= 0))),
    CONSTRAINT breakthrough_attempts_fail_streak_before_check CHECK ((fail_streak_before >= 0)),
    CONSTRAINT breakthrough_attempts_final_success_chance_check CHECK (((final_success_chance >= (0)::numeric) AND (final_success_chance <= (1)::numeric))),
    CONSTRAINT breakthrough_attempts_from_stage_check CHECK (((from_stage >= 1) AND (from_stage <= 10))),
    CONSTRAINT breakthrough_attempts_from_stage_check1 CHECK ((from_stage = 10)),
    CONSTRAINT breakthrough_attempts_pity_bonus_check CHECK (((pity_bonus >= (0)::numeric) AND (pity_bonus <= (1)::numeric))),
    CONSTRAINT breakthrough_attempts_result_check CHECK (((result IS NULL) OR ((result)::text = ANY ((ARRAY['SUCCESS'::character varying, 'FAILED_DEFAULT'::character varying, 'FAILED_PROTECTED'::character varying, 'CANCELLED'::character varying])::text[])))),
    CONSTRAINT breakthrough_attempts_rng_roll_check CHECK (((rng_roll IS NULL) OR ((rng_roll >= (0)::numeric) AND (rng_roll < (1)::numeric)))),
    CONSTRAINT breakthrough_attempts_to_stage_check CHECK (((to_stage >= 1) AND (to_stage <= 10))),
    CONSTRAINT breakthrough_attempts_xp_after_check CHECK (((xp_after IS NULL) OR (xp_after >= 0))),
    CONSTRAINT breakthrough_attempts_xp_before_check CHECK ((xp_before >= 0))
);


ALTER TABLE hero.breakthrough_attempts OWNER TO lost_kingsland;

--
-- TOC entry 5849 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE breakthrough_attempts; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.breakthrough_attempts IS 'v4.0 Tribulation: Stage10 only; higher Realms have lower configured base chance. Consecutive failure pity adds +5 percentage points per fail; booster adds +10pp for one attempt; protected failure keeps Stage10 and loses 50% XP, default failure loses all XP and drops to Stage9. Success resets fail streak.';


--
-- TOC entry 277 (class 1259 OID 33872)
-- Name: character_creation_sessions; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.character_creation_sessions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    config_version_id bigint NOT NULL,
    status character varying(32) DEFAULT 'IN_PROGRESS'::character varying NOT NULL,
    hero_name public.citext,
    race_code character varying(64),
    path_code character varying(64),
    affinity_code character varying(64),
    starting_technique_code character varying(96),
    current_step character varying(48) DEFAULT 'NAME'::character varying NOT NULL,
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    confirmed_hero_id uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT character_creation_sessions_status_check CHECK (((status)::text = ANY ((ARRAY['IN_PROGRESS'::character varying, 'CONFIRMED'::character varying, 'CANCELLED'::character varying])::text[])))
);


ALTER TABLE hero.character_creation_sessions OWNER TO lost_kingsland;

--
-- TOC entry 5850 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE character_creation_sessions; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.character_creation_sessions IS 'Resumable PostgreSQL-authoritative Discord character creation state. Duplicate confirmations must converge on the same single playable Hero.';


--
-- TOC entry 279 (class 1259 OID 33939)
-- Name: hero_affinities; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.hero_affinities (
    hero_id uuid NOT NULL,
    affinity_code character varying(64) NOT NULL,
    config_version_id bigint NOT NULL,
    slot smallint NOT NULL,
    resonance_score numeric(18,4) DEFAULT 0 NOT NULL,
    mastery_level integer DEFAULT 1 NOT NULL,
    CONSTRAINT hero_affinities_slot_check CHECK (((slot >= 1) AND (slot <= 2)))
);


ALTER TABLE hero.hero_affinities OWNER TO lost_kingsland;

--
-- TOC entry 5851 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE hero_affinities; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.hero_affinities IS 'Authoritative 1–2 Affinity slots per hero. Do not duplicate primary/secondary affinity columns on player_heroes.';


--
-- TOC entry 278 (class 1259 OID 33924)
-- Name: hero_bloodlines; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.hero_bloodlines (
    hero_id uuid NOT NULL,
    bloodline_code character varying(64) NOT NULL,
    tier integer DEFAULT 1 NOT NULL,
    awakened_at timestamp with time zone,
    progress bigint DEFAULT 0 NOT NULL,
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE hero.hero_bloodlines OWNER TO lost_kingsland;

--
-- TOC entry 276 (class 1259 OID 33822)
-- Name: hero_source_stats; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.hero_source_stats (
    hero_id uuid NOT NULL,
    martial_power numeric(24,6) DEFAULT 0 NOT NULL,
    mystic_power numeric(24,6) DEFAULT 0 NOT NULL,
    vitality numeric(24,6) DEFAULT 0 NOT NULL,
    armor numeric(24,6) DEFAULT 0 NOT NULL,
    ward numeric(24,6) DEFAULT 0 NOT NULL,
    crit_rating numeric(24,6) DEFAULT 0 NOT NULL,
    crit_resist numeric(24,6) DEFAULT 0 NOT NULL,
    penetration numeric(24,6) DEFAULT 0 NOT NULL,
    defense_break numeric(24,6) DEFAULT 0 NOT NULL,
    status_potency numeric(24,6) DEFAULT 0 NOT NULL,
    status_resist numeric(24,6) DEFAULT 0 NOT NULL,
    speed numeric(24,6) DEFAULT 0 NOT NULL,
    accuracy_rating numeric(24,6) DEFAULT 0 NOT NULL,
    evasion_rating numeric(24,6) DEFAULT 0 NOT NULL,
    toughness_rating numeric(24,6) DEFAULT 0 NOT NULL,
    combo_rating numeric(24,6) DEFAULT 0 NOT NULL,
    bleed_rating numeric(24,6) DEFAULT 0 NOT NULL,
    lifesteal_pct numeric(10,6) DEFAULT 0 NOT NULL,
    damage_bonus_pct numeric(10,6) DEFAULT 0 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT hero_source_stats_accuracy_rating_check CHECK ((accuracy_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_armor_check CHECK ((armor >= (0)::numeric)),
    CONSTRAINT hero_source_stats_bleed_rating_check CHECK ((bleed_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_combo_rating_check CHECK ((combo_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_crit_rating_check CHECK ((crit_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_crit_resist_check CHECK ((crit_resist >= (0)::numeric)),
    CONSTRAINT hero_source_stats_damage_bonus_pct_check CHECK ((damage_bonus_pct >= (0)::numeric)),
    CONSTRAINT hero_source_stats_defense_break_check CHECK ((defense_break >= (0)::numeric)),
    CONSTRAINT hero_source_stats_evasion_rating_check CHECK ((evasion_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_lifesteal_pct_check CHECK ((lifesteal_pct >= (0)::numeric)),
    CONSTRAINT hero_source_stats_martial_power_check CHECK ((martial_power >= (0)::numeric)),
    CONSTRAINT hero_source_stats_mystic_power_check CHECK ((mystic_power >= (0)::numeric)),
    CONSTRAINT hero_source_stats_penetration_check CHECK ((penetration >= (0)::numeric)),
    CONSTRAINT hero_source_stats_speed_check CHECK ((speed >= (0)::numeric)),
    CONSTRAINT hero_source_stats_status_potency_check CHECK ((status_potency >= (0)::numeric)),
    CONSTRAINT hero_source_stats_status_resist_check CHECK ((status_resist >= (0)::numeric)),
    CONSTRAINT hero_source_stats_toughness_rating_check CHECK ((toughness_rating >= (0)::numeric)),
    CONSTRAINT hero_source_stats_vitality_check CHECK ((vitality >= (0)::numeric)),
    CONSTRAINT hero_source_stats_ward_check CHECK ((ward >= (0)::numeric))
);


ALTER TABLE hero.hero_source_stats OWNER TO lost_kingsland;

--
-- TOC entry 5852 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE hero_source_stats; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.hero_source_stats IS 'Authoritative persisted Hero source stats used to construct immutable Combat snapshots. Final damage/mitigation is owned by Combat Engine, not this table.';


--
-- TOC entry 283 (class 1259 OID 34030)
-- Name: hero_talent_allocations; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.hero_talent_allocations (
    hero_id uuid NOT NULL,
    talent_node_id uuid NOT NULL,
    rank integer NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT hero_talent_allocations_rank_check CHECK ((rank > 0))
);


ALTER TABLE hero.hero_talent_allocations OWNER TO lost_kingsland;

--
-- TOC entry 280 (class 1259 OID 33964)
-- Name: hero_techniques; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.hero_techniques (
    hero_id uuid NOT NULL,
    technique_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    learned_level integer DEFAULT 1 NOT NULL,
    mastery_xp bigint DEFAULT 0 NOT NULL,
    unlocked_at timestamp with time zone DEFAULT now() NOT NULL,
    source_type character varying(64),
    source_id character varying(128)
);


ALTER TABLE hero.hero_techniques OWNER TO lost_kingsland;

--
-- TOC entry 284 (class 1259 OID 34047)
-- Name: profession_progress; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.profession_progress (
    hero_id uuid NOT NULL,
    profession_code character varying(64) NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    xp bigint DEFAULT 0 NOT NULL,
    specialization_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    is_specialized boolean DEFAULT false NOT NULL
);


ALTER TABLE hero.profession_progress OWNER TO lost_kingsland;

--
-- TOC entry 282 (class 1259 OID 34012)
-- Name: talent_nodes; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.talent_nodes (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    path_code character varying(64) NOT NULL,
    node_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    tier integer NOT NULL,
    prerequisites jsonb DEFAULT '[]'::jsonb NOT NULL,
    max_rank integer DEFAULT 1 NOT NULL,
    effects jsonb DEFAULT '[]'::jsonb NOT NULL
);


ALTER TABLE hero.talent_nodes OWNER TO lost_kingsland;

--
-- TOC entry 281 (class 1259 OID 33987)
-- Name: technique_loadouts; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.technique_loadouts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    hero_id uuid NOT NULL,
    name character varying(64) NOT NULL,
    slot_layout jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE hero.technique_loadouts OWNER TO lost_kingsland;

--
-- TOC entry 286 (class 1259 OID 34105)
-- Name: voice_cultivation_sessions; Type: TABLE; Schema: hero; Owner: lost_kingsland
--

CREATE TABLE hero.voice_cultivation_sessions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    hero_id uuid NOT NULL,
    player_id uuid NOT NULL,
    guild_binding_id uuid,
    discord_channel_id bigint,
    joined_at timestamp with time zone NOT NULL,
    left_at timestamp with time zone,
    eligible_seconds bigint DEFAULT 0 NOT NULL,
    qi_granted bigint DEFAULT 0 NOT NULL,
    eligibility_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    grant_operation_id uuid,
    config_version_id bigint NOT NULL,
    settled_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT voice_cultivation_sessions_eligible_seconds_check CHECK ((eligible_seconds >= 0)),
    CONSTRAINT voice_cultivation_sessions_qi_granted_check CHECK ((qi_granted >= 0))
);


ALTER TABLE hero.voice_cultivation_sessions OWNER TO lost_kingsland;

--
-- TOC entry 5853 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE voice_cultivation_sessions; Type: COMMENT; Schema: hero; Owner: lost_kingsland
--

COMMENT ON TABLE hero.voice_cultivation_sessions IS 'Voice Cultivation stores presence/eligibility settlement metadata only; it does not store or inspect voice audio. /music playback itself is not a reward source.';


--
-- TOC entry 251 (class 1259 OID 33353)
-- Name: discord_guild_bindings; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.discord_guild_bindings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    discord_guild_id bigint NOT NULL,
    owner_account_id uuid,
    clan_id uuid,
    game_channel_id bigint,
    clan_channel_id bigint,
    announcement_channel_id bigint,
    settings_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE identity.discord_guild_bindings OWNER TO lost_kingsland;

--
-- TOC entry 248 (class 1259 OID 33291)
-- Name: discord_link_events; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.discord_link_events (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    discord_link_id uuid,
    account_id uuid NOT NULL,
    discord_user_id bigint NOT NULL,
    event_type character varying(32) NOT NULL,
    reason_code character varying(96),
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT discord_link_events_event_type_check CHECK (((event_type)::text = ANY ((ARRAY['LINKED'::character varying, 'RELINKED'::character varying, 'REVOKED'::character varying])::text[])))
);


ALTER TABLE identity.discord_link_events OWNER TO lost_kingsland;

--
-- TOC entry 252 (class 1259 OID 33371)
-- Name: interaction_refs; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.interaction_refs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid,
    interaction_type character varying(64) NOT NULL,
    aggregate_type character varying(64),
    aggregate_id uuid,
    expected_version bigint,
    expires_at timestamp with time zone NOT NULL,
    consumed_at timestamp with time zone,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE identity.interaction_refs OWNER TO lost_kingsland;

--
-- TOC entry 250 (class 1259 OID 33337)
-- Name: player_settings; Type: TABLE; Schema: identity; Owner: lost_kingsland
--

CREATE TABLE identity.player_settings (
    player_id uuid NOT NULL,
    notification_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    privacy_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    accessibility_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE identity.player_settings OWNER TO lost_kingsland;

--
-- TOC entry 297 (class 1259 OID 34306)
-- Name: craft_jobs; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.craft_jobs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    hero_id uuid,
    recipe_code character varying(96) NOT NULL,
    building_id uuid,
    status platform.queue_status DEFAULT 'RUNNING'::platform.queue_status NOT NULL,
    input_operation_id uuid NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    completes_at timestamp with time zone NOT NULL,
    completed_at timestamp with time zone,
    output_operation_id uuid,
    result_json jsonb,
    config_version_id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT craft_jobs_check CHECK ((completes_at >= started_at))
);


ALTER TABLE inventory.craft_jobs OWNER TO lost_kingsland;

--
-- TOC entry 289 (class 1259 OID 34176)
-- Name: equipment_affix_combinations_id_seq; Type: SEQUENCE; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE inventory.equipment_affix_combinations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME inventory.equipment_affix_combinations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 294 (class 1259 OID 34256)
-- Name: equipment_loadouts; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.equipment_loadouts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    hero_id uuid NOT NULL,
    name character varying(64) NOT NULL,
    slots jsonb NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE inventory.equipment_loadouts OWNER TO lost_kingsland;

--
-- TOC entry 288 (class 1259 OID 34167)
-- Name: equipment_stat_defs; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.equipment_stat_defs (
    code character varying(64) NOT NULL,
    display_name_vi character varying(64) NOT NULL,
    value_unit character varying(24) NOT NULL,
    combat_mapping character varying(128) NOT NULL,
    description text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT equipment_stat_defs_value_unit_check CHECK (((value_unit)::text = ANY ((ARRAY['FLAT'::character varying, 'RATING'::character varying, 'PERCENT'::character varying])::text[])))
);


ALTER TABLE inventory.equipment_stat_defs OWNER TO lost_kingsland;

--
-- TOC entry 293 (class 1259 OID 34241)
-- Name: inventory_stacks; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.inventory_stacks (
    player_id uuid NOT NULL,
    item_code character varying(96) NOT NULL,
    binding character varying(32) DEFAULT 'ACCOUNT'::character varying NOT NULL,
    quantity bigint DEFAULT 0 NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT inventory_stacks_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE inventory.inventory_stacks OWNER TO lost_kingsland;

--
-- TOC entry 296 (class 1259 OID 34295)
-- Name: player_recipes; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.player_recipes (
    player_id uuid NOT NULL,
    recipe_code character varying(96) NOT NULL,
    discovered_at timestamp with time zone DEFAULT now() NOT NULL,
    source_type character varying(64),
    source_id character varying(128)
);


ALTER TABLE inventory.player_recipes OWNER TO lost_kingsland;

--
-- TOC entry 295 (class 1259 OID 34276)
-- Name: recipes; Type: TABLE; Schema: inventory; Owner: lost_kingsland
--

CREATE TABLE inventory.recipes (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    recipe_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    profession_code character varying(64),
    required_level integer DEFAULT 1 NOT NULL,
    inputs jsonb NOT NULL,
    outputs jsonb NOT NULL,
    duration_seconds integer DEFAULT 0 NOT NULL,
    building_requirement jsonb DEFAULT '{}'::jsonb NOT NULL,
    discovery_rule jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE inventory.recipes OWNER TO lost_kingsland;

--
-- TOC entry 385 (class 1259 OID 46102)
-- Name: v_equipment_sample_catalog; Type: VIEW; Schema: inventory; Owner: lost_kingsland
--

CREATE VIEW inventory.v_equipment_sample_catalog AS
 SELECT d.code,
    d.display_name_vi,
    d.image_asset_key,
    d.equipment_slot,
    d.affix_combo_code,
    d.rarity,
    rp.power_ordinal AS rarity_ordinal,
    d.set_code,
    d.set_name,
    sd.identity_summary AS set_identity,
    (d.set_code IS NOT NULL) AS is_set_piece,
    d.base_stats,
    d.base_effects
   FROM ((inventory.item_defs d
     JOIN inventory.rarity_policy rp ON ((rp.rarity = d.rarity)))
     LEFT JOIN inventory.equipment_set_defs sd ON (((sd.set_code)::text = (d.set_code)::text)))
  WHERE (('FULL_COMBO_MATRIX'::text = ANY ((d.tags)::text[])) AND ('XIANXIA_NAMING_V1'::text = ANY ((d.tags)::text[])))
  ORDER BY rp.power_ordinal, d.equipment_slot, d.affix_combo_code, d.display_name_vi;


ALTER VIEW inventory.v_equipment_sample_catalog OWNER TO lost_kingsland;

--
-- TOC entry 314 (class 1259 OID 34623)
-- Name: construction_jobs; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.construction_jobs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kingdom_id uuid NOT NULL,
    building_id uuid NOT NULL,
    from_level integer NOT NULL,
    to_level integer NOT NULL,
    queue_slot integer DEFAULT 1 NOT NULL,
    status platform.queue_status DEFAULT 'RUNNING'::platform.queue_status NOT NULL,
    cost_operation_id uuid NOT NULL,
    base_duration_seconds integer NOT NULL,
    help_seconds_applied integer DEFAULT 0 NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    completes_at timestamp with time zone NOT NULL,
    completed_at timestamp with time zone,
    apply_operation_id uuid,
    config_version_id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT construction_jobs_base_duration_seconds_check CHECK ((base_duration_seconds > 0)),
    CONSTRAINT construction_jobs_check CHECK ((to_level > from_level)),
    CONSTRAINT construction_jobs_check1 CHECK ((completes_at >= started_at)),
    CONSTRAINT construction_jobs_help_seconds_applied_check CHECK ((help_seconds_applied >= 0))
);


ALTER TABLE kingdom.construction_jobs OWNER TO lost_kingsland;

--
-- TOC entry 313 (class 1259 OID 34601)
-- Name: kingdom_buildings; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.kingdom_buildings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kingdom_id uuid NOT NULL,
    building_code character varying(64) NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    state_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT kingdom_buildings_level_check CHECK ((level >= 0))
);


ALTER TABLE kingdom.kingdom_buildings OWNER TO lost_kingsland;

--
-- TOC entry 312 (class 1259 OID 34582)
-- Name: player_kingdoms; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.player_kingdoms (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    city_hall_level integer DEFAULT 1 NOT NULL,
    banner_key character varying(128),
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT player_kingdoms_city_hall_level_check CHECK ((city_hall_level > 0))
);


ALTER TABLE kingdom.player_kingdoms OWNER TO lost_kingsland;

--
-- TOC entry 315 (class 1259 OID 34659)
-- Name: player_research; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.player_research (
    kingdom_id uuid NOT NULL,
    research_code character varying(96) NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE kingdom.player_research OWNER TO lost_kingsland;

--
-- TOC entry 317 (class 1259 OID 34696)
-- Name: production_sites; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.production_sites (
    kingdom_id uuid NOT NULL,
    resource_code character varying(64) NOT NULL,
    building_code character varying(64) NOT NULL,
    production_per_hour numeric(24,6) DEFAULT 0 NOT NULL,
    storage_cap numeric(24,6) DEFAULT 0 NOT NULL,
    stored_amount numeric(24,6) DEFAULT 0 NOT NULL,
    last_accrual_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE kingdom.production_sites OWNER TO lost_kingsland;

--
-- TOC entry 316 (class 1259 OID 34672)
-- Name: research_jobs; Type: TABLE; Schema: kingdom; Owner: lost_kingsland
--

CREATE TABLE kingdom.research_jobs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    kingdom_id uuid NOT NULL,
    research_code character varying(96) NOT NULL,
    from_level integer NOT NULL,
    to_level integer NOT NULL,
    status platform.queue_status DEFAULT 'RUNNING'::platform.queue_status NOT NULL,
    cost_operation_id uuid NOT NULL,
    help_seconds_applied integer DEFAULT 0 NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    completes_at timestamp with time zone NOT NULL,
    completed_at timestamp with time zone,
    config_version_id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT research_jobs_check CHECK ((to_level > from_level)),
    CONSTRAINT research_jobs_check1 CHECK ((completes_at >= started_at)),
    CONSTRAINT research_jobs_help_seconds_applied_check CHECK ((help_seconds_applied >= 0))
);


ALTER TABLE kingdom.research_jobs OWNER TO lost_kingsland;

--
-- TOC entry 362 (class 1259 OID 35786)
-- Name: event_defs; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.event_defs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    event_code character varying(96) NOT NULL,
    config_version_id bigint NOT NULL,
    event_type character varying(64) NOT NULL,
    eligibility_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    objective_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    caps_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_table jsonb DEFAULT '{}'::jsonb NOT NULL,
    anti_abuse_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    rollback_plan jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE liveops.event_defs OWNER TO lost_kingsland;

--
-- TOC entry 363 (class 1259 OID 35807)
-- Name: events; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.events (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    event_code character varying(96) NOT NULL,
    season_id uuid,
    config_version_id bigint NOT NULL,
    starts_at timestamp with time zone NOT NULL,
    ends_at timestamp with time zone NOT NULL,
    status character varying(32) DEFAULT 'SCHEDULED'::character varying NOT NULL,
    cohort_rule jsonb DEFAULT '{}'::jsonb NOT NULL,
    runtime_config jsonb DEFAULT '{}'::jsonb NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE liveops.events OWNER TO lost_kingsland;

--
-- TOC entry 366 (class 1259 OID 35872)
-- Name: leaderboard_entries; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.leaderboard_entries (
    leaderboard_id uuid NOT NULL,
    subject_id uuid NOT NULL,
    score numeric(30,6) DEFAULT 0 NOT NULL,
    rank_snapshot integer,
    tiebreak_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE liveops.leaderboard_entries OWNER TO lost_kingsland;

--
-- TOC entry 365 (class 1259 OID 35851)
-- Name: leaderboards; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.leaderboards (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    leaderboard_code character varying(96) NOT NULL,
    season_id uuid,
    event_id uuid,
    subject_type character varying(32) NOT NULL,
    scoring_rule jsonb NOT NULL,
    closes_at timestamp with time zone,
    status character varying(32) DEFAULT 'ACTIVE'::character varying NOT NULL
);


ALTER TABLE liveops.leaderboards OWNER TO lost_kingsland;

--
-- TOC entry 367 (class 1259 OID 35888)
-- Name: merchant_rotations; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.merchant_rotations (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    merchant_code character varying(64) NOT NULL,
    player_id uuid,
    cohort_key character varying(96),
    starts_at timestamp with time zone NOT NULL,
    ends_at timestamp with time zone NOT NULL,
    offers_json jsonb NOT NULL,
    config_version_id bigint NOT NULL
);


ALTER TABLE liveops.merchant_rotations OWNER TO lost_kingsland;

--
-- TOC entry 364 (class 1259 OID 35829)
-- Name: player_event_progress; Type: TABLE; Schema: liveops; Owner: lost_kingsland
--

CREATE TABLE liveops.player_event_progress (
    event_id uuid NOT NULL,
    player_id uuid NOT NULL,
    score numeric(30,6) DEFAULT 0 NOT NULL,
    progress_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_state jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL
);


ALTER TABLE liveops.player_event_progress OWNER TO lost_kingsland;

--
-- TOC entry 348 (class 1259 OID 35378)
-- Name: gather_jobs; Type: TABLE; Schema: march; Owner: lost_kingsland
--

CREATE TABLE march.gather_jobs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    march_slot_id uuid NOT NULL,
    player_id uuid NOT NULL,
    resource_site_id uuid NOT NULL,
    status character varying(32) DEFAULT 'RUNNING'::character varying NOT NULL,
    start_remaining_amount numeric(30,8) NOT NULL,
    gather_rate_per_second numeric(30,8) NOT NULL,
    gathered_amount numeric(30,8) DEFAULT 0 NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    last_settled_at timestamp with time zone DEFAULT now() NOT NULL,
    ended_at timestamp with time zone,
    settlement_operation_id uuid,
    config_version_id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT gather_jobs_gather_rate_per_second_check CHECK ((gather_rate_per_second > (0)::numeric)),
    CONSTRAINT gather_jobs_gathered_amount_check CHECK ((gathered_amount >= (0)::numeric)),
    CONSTRAINT gather_jobs_start_remaining_amount_check CHECK ((start_remaining_amount >= (0)::numeric)),
    CONSTRAINT gather_jobs_status_check CHECK (((status)::text = ANY ((ARRAY['RUNNING'::character varying, 'WITHDRAW_REQUESTED'::character varying, 'WITHDRAWN'::character varying, 'DEPLETED'::character varying, 'FAILED'::character varying])::text[])))
);


ALTER TABLE march.gather_jobs OWNER TO lost_kingsland;

--
-- TOC entry 5854 (class 0 OID 0)
-- Dependencies: 348
-- Name: TABLE gather_jobs; Type: COMMENT; Schema: march; Owner: lost_kingsland
--

COMMENT ON TABLE march.gather_jobs IS 'Withdraw may be requested at any time. Service settles accrued amount to the withdrawal timestamp, releases remaining site capacity, and makes the march slot immediately reusable; there is no gameplay return cooldown.';


--
-- TOC entry 345 (class 1259 OID 35286)
-- Name: hunt_loops; Type: TABLE; Schema: march; Owner: lost_kingsland
--

CREATE TABLE march.hunt_loops (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    march_slot_id uuid NOT NULL,
    player_id uuid NOT NULL,
    exploration_floor integer NOT NULL,
    monster_profile_code character varying(96) NOT NULL,
    status character varying(32) DEFAULT 'RUNNING'::character varying NOT NULL,
    current_round bigint DEFAULT 0 NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    stopped_at timestamp with time zone,
    config_version_id bigint NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT hunt_loops_current_round_check CHECK ((current_round >= 0)),
    CONSTRAINT hunt_loops_exploration_floor_check CHECK ((exploration_floor >= 1)),
    CONSTRAINT hunt_loops_status_check CHECK (((status)::text = ANY ((ARRAY['RUNNING'::character varying, 'STOP_REQUESTED'::character varying, 'STOPPED'::character varying, 'FAILED'::character varying, 'COMPLETED'::character varying])::text[])))
);


ALTER TABLE march.hunt_loops OWNER TO lost_kingsland;

--
-- TOC entry 346 (class 1259 OID 35320)
-- Name: hunt_rounds; Type: TABLE; Schema: march; Owner: lost_kingsland
--

CREATE TABLE march.hunt_rounds (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    hunt_loop_id uuid NOT NULL,
    round_no bigint NOT NULL,
    combat_instance_id uuid NOT NULL,
    reward_grant_id uuid,
    exploration_floor_snapshot integer NOT NULL,
    clan_id_snapshot uuid,
    clan_drop_level_bonus_pct numeric(8,6) DEFAULT 0 NOT NULL,
    loot_snapshot jsonb DEFAULT '{}'::jsonb NOT NULL,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    settled_at timestamp with time zone,
    CONSTRAINT hunt_rounds_clan_drop_level_bonus_pct_check CHECK ((clan_drop_level_bonus_pct >= (0)::numeric)),
    CONSTRAINT hunt_rounds_exploration_floor_snapshot_check CHECK ((exploration_floor_snapshot >= 1)),
    CONSTRAINT hunt_rounds_round_no_check CHECK ((round_no > 0))
);


ALTER TABLE march.hunt_rounds OWNER TO lost_kingsland;

--
-- TOC entry 5855 (class 0 OID 0)
-- Dependencies: 346
-- Name: TABLE hunt_rounds; Type: COMMENT; Schema: march; Owner: lost_kingsland
--

COMMENT ON TABLE march.hunt_rounds IS 'Each hunt round settles one Combat Engine result then reward. v4.0 reward profile guarantees >=1 equipment item per monster kill; retries must reuse persisted reward/RNG identity.';


--
-- TOC entry 344 (class 1259 OID 35251)
-- Name: player_march_slots; Type: TABLE; Schema: march; Owner: lost_kingsland
--

CREATE TABLE march.player_march_slots (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    slot_no smallint NOT NULL,
    commander_id uuid,
    status march.march_status DEFAULT 'AVAILABLE'::march.march_status NOT NULL,
    assignment_type march.assignment_type,
    loadout_snapshot jsonb DEFAULT '{}'::jsonb NOT NULL,
    unlocked_at_city_hall_level integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT player_march_slots_slot_no_check CHECK (((slot_no >= 1) AND (slot_no <= 5)))
);


ALTER TABLE march.player_march_slots OWNER TO lost_kingsland;

--
-- TOC entry 5856 (class 0 OID 0)
-- Dependencies: 344
-- Name: TABLE player_march_slots; Type: COMMENT; Schema: march; Owner: lost_kingsland
--

COMMENT ON TABLE march.player_march_slots IS 'At most five slots per player; one Commander may lead at most one active March. Application eligibility derives from City Hall thresholds and versioned configuration.';


--
-- TOC entry 347 (class 1259 OID 35358)
-- Name: resource_sites; Type: TABLE; Schema: march; Owner: lost_kingsland
--

CREATE TABLE march.resource_sites (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    resource_code character varying(64) NOT NULL,
    tier integer NOT NULL,
    richness_code character varying(48) NOT NULL,
    initial_amount numeric(30,8) NOT NULL,
    remaining_amount numeric(30,8) NOT NULL,
    base_gather_rate_per_second numeric(30,8) NOT NULL,
    status march.resource_site_status DEFAULT 'AVAILABLE'::march.resource_site_status NOT NULL,
    generated_from character varying(64),
    config_version_id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    reopened_at timestamp with time zone,
    depleted_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT resource_sites_base_gather_rate_per_second_check CHECK ((base_gather_rate_per_second > (0)::numeric)),
    CONSTRAINT resource_sites_check CHECK ((remaining_amount <= initial_amount)),
    CONSTRAINT resource_sites_initial_amount_check CHECK ((initial_amount > (0)::numeric)),
    CONSTRAINT resource_sites_remaining_amount_check CHECK ((remaining_amount >= (0)::numeric)),
    CONSTRAINT resource_sites_tier_check CHECK ((tier > 0))
);


ALTER TABLE march.resource_sites OWNER TO lost_kingsland;

--
-- TOC entry 350 (class 1259 OID 35464)
-- Name: direct_trade_offers; Type: TABLE; Schema: market; Owner: lost_kingsland
--

CREATE TABLE market.direct_trade_offers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    sender_player_id uuid NOT NULL,
    recipient_player_id uuid NOT NULL,
    item_instance_id uuid NOT NULL,
    requested_gold numeric(30,0) DEFAULT 0 NOT NULL,
    status market.trade_status DEFAULT 'PENDING'::market.trade_status NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone,
    resolved_at timestamp with time zone,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT direct_trade_offers_check CHECK ((sender_player_id <> recipient_player_id)),
    CONSTRAINT direct_trade_offers_requested_gold_check CHECK ((requested_gold >= (0)::numeric))
);


ALTER TABLE market.direct_trade_offers OWNER TO lost_kingsland;

--
-- TOC entry 351 (class 1259 OID 35492)
-- Name: item_transfers; Type: TABLE; Schema: market; Owner: lost_kingsland
--

CREATE TABLE market.item_transfers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    transfer_type market.transfer_type NOT NULL,
    source_ref_id uuid,
    item_instance_id uuid NOT NULL,
    from_player_id uuid NOT NULL,
    to_player_id uuid NOT NULL,
    recipient_floor_snapshot integer NOT NULL,
    recipient_natural_max_rarity inventory.item_rarity NOT NULL,
    recipient_allowed_max_rarity inventory.item_rarity NOT NULL,
    item_rarity inventory.item_rarity NOT NULL,
    eligibility_passed boolean NOT NULL,
    ownership_operation_id uuid,
    idempotency_key character varying(160) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    settled_at timestamp with time zone,
    CONSTRAINT item_transfers_check CHECK ((from_player_id <> to_player_id)),
    CONSTRAINT item_transfers_recipient_floor_snapshot_check CHECK ((recipient_floor_snapshot >= 1))
);


ALTER TABLE market.item_transfers OWNER TO lost_kingsland;

--
-- TOC entry 5857 (class 0 OID 0)
-- Dependencies: 351
-- Name: TABLE item_transfers; Type: COMMENT; Schema: market; Owner: lost_kingsland
--

COMMENT ON TABLE market.item_transfers IS 'Immutable transfer history. from_player_id/to_player_id are historical snapshots and intentionally do not FK to inventory.item_instances current owner; ownership is validated and locked transactionally at listing/settlement. Authoritative recipient gate: item rarity ordinal must be <= min(global max, NaturalMaxRarity(current Exploration Floor)+1). Re-check at settlement for Market and Direct Trade so one path cannot bypass the other.';


--
-- TOC entry 349 (class 1259 OID 35425)
-- Name: listings; Type: TABLE; Schema: market; Owner: lost_kingsland
--

CREATE TABLE market.listings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    seller_player_id uuid NOT NULL,
    item_instance_id uuid NOT NULL,
    listed_rarity inventory.item_rarity NOT NULL,
    listed_item_level integer NOT NULL,
    price_asset_code character varying(64) NOT NULL,
    price_amount numeric(30,8) NOT NULL,
    status market.listing_status DEFAULT 'ACTIVE'::market.listing_status NOT NULL,
    buyer_player_id uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone,
    settled_at timestamp with time zone,
    settlement_operation_id uuid,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT listings_check CHECK (((seller_player_id <> buyer_player_id) OR (buyer_player_id IS NULL))),
    CONSTRAINT listings_listed_item_level_check CHECK ((listed_item_level > 0)),
    CONSTRAINT listings_price_amount_check CHECK ((price_amount > (0)::numeric))
);


ALTER TABLE market.listings OWNER TO lost_kingsland;

--
-- TOC entry 373 (class 1259 OID 36012)
-- Name: guild_media_settings; Type: TABLE; Schema: media; Owner: lost_kingsland
--

CREATE TABLE media.guild_media_settings (
    guild_binding_id uuid NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    dj_role_id bigint,
    default_volume smallint DEFAULT 70 NOT NULL,
    max_queue_items integer DEFAULT 100 NOT NULL,
    max_track_seconds integer DEFAULT 14400 NOT NULL,
    empty_voice_disconnect_seconds integer DEFAULT 1800 NOT NULL,
    auto_next_enabled boolean DEFAULT true NOT NULL,
    youtube_enabled boolean DEFAULT true NOT NULL,
    youtube_search_limit smallint DEFAULT 10 NOT NULL,
    search_timeout_seconds smallint DEFAULT 60 NOT NULL,
    source_policy jsonb DEFAULT '{"youtubeMode": "AUDIO_SEARCH_OR_DIRECT_URL", "searchResultLimit": 10, "playIfIdleElseEnqueue": true}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    version bigint DEFAULT 0 NOT NULL,
    CONSTRAINT guild_media_settings_default_volume_check CHECK (((default_volume >= 0) AND (default_volume <= 100))),
    CONSTRAINT guild_media_settings_empty_voice_disconnect_seconds_check CHECK (((empty_voice_disconnect_seconds >= 60) AND (empty_voice_disconnect_seconds <= 86400))),
    CONSTRAINT guild_media_settings_max_queue_items_check CHECK (((max_queue_items >= 1) AND (max_queue_items <= 500))),
    CONSTRAINT guild_media_settings_max_track_seconds_check CHECK (((max_track_seconds >= 30) AND (max_track_seconds <= 86400))),
    CONSTRAINT guild_media_settings_search_timeout_seconds_check CHECK (((search_timeout_seconds >= 15) AND (search_timeout_seconds <= 300))),
    CONSTRAINT guild_media_settings_youtube_search_limit_check CHECK (((youtube_search_limit >= 1) AND (youtube_search_limit <= 25)))
);


ALTER TABLE media.guild_media_settings OWNER TO lost_kingsland;

--
-- TOC entry 5858 (class 0 OID 0)
-- Dependencies: 373
-- Name: TABLE guild_media_settings; Type: COMMENT; Schema: media; Owner: lost_kingsland
--

COMMENT ON TABLE media.guild_media_settings IS 'Durable Media policy. Runtime queue/search/voice session remains Redis-ephemeral. Requester must be in Voice before /music; queued tracks auto-advance; queue-empty does not disconnect; zero humans continuously for 1800s does.';


--
-- TOC entry 380 (class 1259 OID 36096)
-- Name: abuse_signals; Type: TABLE; Schema: ops; Owner: lost_kingsland
--

CREATE TABLE ops.abuse_signals (
    id bigint NOT NULL,
    player_id uuid,
    signal_type character varying(64) NOT NULL,
    severity integer NOT NULL,
    signal_json jsonb NOT NULL,
    detected_at timestamp with time zone DEFAULT now() NOT NULL,
    reviewed_at timestamp with time zone,
    disposition character varying(64),
    CONSTRAINT abuse_signals_severity_check CHECK (((severity >= 1) AND (severity <= 5)))
);


ALTER TABLE ops.abuse_signals OWNER TO lost_kingsland;

--
-- TOC entry 379 (class 1259 OID 36095)
-- Name: abuse_signals_id_seq; Type: SEQUENCE; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ops.abuse_signals ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME ops.abuse_signals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 375 (class 1259 OID 36043)
-- Name: audit_logs; Type: TABLE; Schema: ops; Owner: lost_kingsland
--

CREATE TABLE ops.audit_logs (
    id bigint NOT NULL,
    actor_type character varying(32) NOT NULL,
    actor_id character varying(128),
    action character varying(96) NOT NULL,
    object_type character varying(64) NOT NULL,
    object_id character varying(128),
    reason_code character varying(96),
    before_json jsonb,
    after_json jsonb,
    request_id character varying(128),
    created_at timestamp with time zone DEFAULT now() NOT NULL
)
PARTITION BY RANGE (created_at);


ALTER TABLE ops.audit_logs OWNER TO lost_kingsland;

--
-- TOC entry 376 (class 1259 OID 36049)
-- Name: audit_logs_default; Type: TABLE; Schema: ops; Owner: lost_kingsland
--

CREATE TABLE ops.audit_logs_default (
    id bigint NOT NULL,
    actor_type character varying(32) NOT NULL,
    actor_id character varying(128),
    action character varying(96) NOT NULL,
    object_type character varying(64) NOT NULL,
    object_id character varying(128),
    reason_code character varying(96),
    before_json jsonb,
    after_json jsonb,
    request_id character varying(128),
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE ops.audit_logs_default OWNER TO lost_kingsland;

--
-- TOC entry 374 (class 1259 OID 36042)
-- Name: audit_logs_id_seq; Type: SEQUENCE; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ops.audit_logs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME ops.audit_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 377 (class 1259 OID 36059)
-- Name: compensation_cases; Type: TABLE; Schema: ops; Owner: lost_kingsland
--

CREATE TABLE ops.compensation_cases (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    reason_code character varying(96) NOT NULL,
    evidence_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    reward_bundle jsonb NOT NULL,
    requested_by character varying(128) NOT NULL,
    approved_by character varying(128),
    status character varying(32) DEFAULT 'PENDING'::character varying NOT NULL,
    operation_id uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    resolved_at timestamp with time zone
);


ALTER TABLE ops.compensation_cases OWNER TO lost_kingsland;

--
-- TOC entry 378 (class 1259 OID 36080)
-- Name: player_sanctions; Type: TABLE; Schema: ops; Owner: lost_kingsland
--

CREATE TABLE ops.player_sanctions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    player_id uuid NOT NULL,
    sanction_type character varying(48) NOT NULL,
    reason_code character varying(96) NOT NULL,
    evidence_json jsonb DEFAULT '{}'::jsonb NOT NULL,
    starts_at timestamp with time zone DEFAULT now() NOT NULL,
    ends_at timestamp with time zone,
    revoked_at timestamp with time zone,
    created_by character varying(128) NOT NULL
);


ALTER TABLE ops.player_sanctions OWNER TO lost_kingsland;

--
-- TOC entry 238 (class 1259 OID 33195)
-- Name: config_versions_id_seq; Type: SEQUENCE; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE platform.config_versions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME platform.config_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 33208)
-- Name: feature_flags; Type: TABLE; Schema: platform; Owner: lost_kingsland
--

CREATE TABLE platform.feature_flags (
    id bigint NOT NULL,
    flag_key character varying(128) NOT NULL,
    config_version_id bigint NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    rule_json jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE platform.feature_flags OWNER TO lost_kingsland;

--
-- TOC entry 240 (class 1259 OID 33207)
-- Name: feature_flags_id_seq; Type: SEQUENCE; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE platform.feature_flags ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME platform.feature_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 33225)
-- Name: idempotency_records; Type: TABLE; Schema: platform; Owner: lost_kingsland
--

CREATE TABLE platform.idempotency_records (
    id bigint NOT NULL,
    actor_scope character varying(64) NOT NULL,
    actor_id uuid,
    operation_type character varying(96) NOT NULL,
    idempotency_key character varying(160) NOT NULL,
    request_hash character varying(128) NOT NULL,
    status character varying(32) NOT NULL,
    response_code character varying(64),
    response_json jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    expires_at timestamp with time zone
);


ALTER TABLE platform.idempotency_records OWNER TO lost_kingsland;

--
-- TOC entry 242 (class 1259 OID 33224)
-- Name: idempotency_records_id_seq; Type: SEQUENCE; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE platform.idempotency_records ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME platform.idempotency_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 33236)
-- Name: outbox_events; Type: TABLE; Schema: platform; Owner: lost_kingsland
--

CREATE TABLE platform.outbox_events (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    aggregate_type character varying(64) NOT NULL,
    aggregate_id uuid,
    event_type character varying(128) NOT NULL,
    routing_key character varying(160) NOT NULL,
    payload jsonb NOT NULL,
    headers jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    published_at timestamp with time zone,
    publish_attempts integer DEFAULT 0 NOT NULL,
    last_error text
);


ALTER TABLE platform.outbox_events OWNER TO lost_kingsland;

--
-- TOC entry 5859 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE outbox_events; Type: COMMENT; Schema: platform; Owner: lost_kingsland
--

COMMENT ON TABLE platform.outbox_events IS 'Transactional outbox. Insert in same PostgreSQL transaction as durable domain change; publisher delivers to RabbitMQ.';


--
-- TOC entry 245 (class 1259 OID 33248)
-- Name: scheduled_actions; Type: TABLE; Schema: platform; Owner: lost_kingsland
--

CREATE TABLE platform.scheduled_actions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    action_type character varying(96) NOT NULL,
    aggregate_type character varying(64) NOT NULL,
    aggregate_id uuid NOT NULL,
    execute_at timestamp with time zone NOT NULL,
    status platform.job_status DEFAULT 'PENDING'::platform.job_status NOT NULL,
    payload jsonb DEFAULT '{}'::jsonb NOT NULL,
    attempt_count integer DEFAULT 0 NOT NULL,
    locked_at timestamp with time zone,
    locked_by character varying(128),
    completed_at timestamp with time zone,
    last_error text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE platform.scheduled_actions OWNER TO lost_kingsland;

--
-- TOC entry 5860 (class 0 OID 0)
-- Dependencies: 245
-- Name: TABLE scheduled_actions; Type: COMMENT; Schema: platform; Owner: lost_kingsland
--

COMMENT ON TABLE platform.scheduled_actions IS 'Durable timer source for construction/research/craft/event jobs. Redis may accelerate due lookup but is not source of truth.';


--
-- TOC entry 383 (class 1259 OID 37116)
-- Name: flyway_schema_history; Type: TABLE; Schema: public; Owner: lost_kingsland
--

CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.flyway_schema_history OWNER TO lost_kingsland;

--
-- TOC entry 4092 (class 0 OID 0)
-- Name: audit_logs_default; Type: TABLE ATTACH; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.audit_logs ATTACH PARTITION ops.audit_logs_default DEFAULT;


--
-- TOC entry 5735 (class 0 OID 34374)
-- Dependencies: 300
-- Data for Name: adventure_runs; Type: TABLE DATA; Schema: adventure; Owner: lost_kingsland
--

COPY adventure.adventure_runs (id, player_id, hero_id, region_code, region_config_version, status, current_node_code, route_state, run_modifiers, consumable_state, started_at, last_action_at, completed_at, version) FROM stdin;
\.


--
-- TOC entry 5737 (class 0 OID 34423)
-- Dependencies: 302
-- Data for Name: energy_balances; Type: TABLE DATA; Schema: adventure; Owner: lost_kingsland
--

COPY adventure.energy_balances (player_id, current_value, cap_value, last_regen_at, regen_seconds, version) FROM stdin;
\.


--
-- TOC entry 5734 (class 0 OID 34356)
-- Dependencies: 299
-- Data for Name: player_exploration_progress; Type: TABLE DATA; Schema: adventure; Owner: lost_kingsland
--

COPY adventure.player_exploration_progress (player_id, current_floor, highest_floor, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5733 (class 0 OID 34339)
-- Dependencies: 298
-- Data for Name: player_region_progress; Type: TABLE DATA; Schema: adventure; Owner: lost_kingsland
--

COPY adventure.player_region_progress (player_id, region_code, unlocked_at, highest_node_ordinal, boss_kills, mastery_level, stars, best_result_json) FROM stdin;
\.


--
-- TOC entry 5736 (class 0 OID 34410)
-- Dependencies: 301
-- Data for Name: run_node_states; Type: TABLE DATA; Schema: adventure; Owner: lost_kingsland
--

COPY adventure.run_node_states (run_id, node_code, node_type, state, encounter_snapshot, reward_snapshot, entered_at, resolved_at) FROM stdin;
\.


--
-- TOC entry 5763 (class 0 OID 34885)
-- Dependencies: 328
-- Data for Name: clan_applications; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_applications (id, clan_id, player_id, message, status, created_at, resolved_at, resolved_by) FROM stdin;
\.


--
-- TOC entry 5789 (class 0 OID 35561)
-- Dependencies: 354
-- Data for Name: clan_boss_attempts; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_boss_attempts (id, clan_boss_id, player_id, hero_id, attempt_no, reserved_at, combat_id, phase_snapshot, damage_committed, result_json, settled_at) FROM stdin;
\.


--
-- TOC entry 5787 (class 0 OID 35523)
-- Dependencies: 352
-- Data for Name: clan_boss_defs; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_boss_defs (id, boss_code, config_version_id, enemy_code, hp_total, phase_rules, attempt_rules, rewards) FROM stdin;
\.


--
-- TOC entry 5788 (class 0 OID 35538)
-- Dependencies: 353
-- Data for Name: clan_bosses; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_bosses (id, clan_id, boss_code, config_version_id, status, opens_at, closes_at, max_hp, current_hp, current_phase, phase_state, killed_at, version) FROM stdin;
\.


--
-- TOC entry 5774 (class 0 OID 35099)
-- Dependencies: 339
-- Data for Name: clan_building_contributions; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_building_contributions (id, clan_id, clan_building_id, player_id, contribution_type, operation_id, contribution_points, created_at) FROM stdin;
\.


--
-- TOC entry 5772 (class 0 OID 35053)
-- Dependencies: 337
-- Data for Name: clan_building_defs; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_building_defs (id, code, config_version_id, name_key, category, max_level, placement_mode, level_table, costs, effects, unlock_rule, status) FROM stdin;
\.


--
-- TOC entry 5773 (class 0 OID 35076)
-- Dependencies: 338
-- Data for Name: clan_buildings; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_buildings (id, clan_id, building_code, level, progress_points, state_json, created_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5768 (class 0 OID 34979)
-- Dependencies: 333
-- Data for Name: clan_donations; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_donations (id, clan_id, player_id, tech_code, operation_id, contribution_points, created_at) FROM stdin;
\.


--
-- TOC entry 5765 (class 0 OID 34933)
-- Dependencies: 330
-- Data for Name: clan_help_actions; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_help_actions (request_id, helper_player_id, reduction_seconds, created_at) FROM stdin;
\.


--
-- TOC entry 5764 (class 0 OID 34912)
-- Dependencies: 329
-- Data for Name: clan_help_requests; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_help_requests (id, clan_id, requester_player_id, target_type, target_id, requested_at, expires_at, max_help_count, current_help_count, max_reduction_seconds, applied_reduction_seconds, status, version) FROM stdin;
\.


--
-- TOC entry 5761 (class 0 OID 34853)
-- Dependencies: 326
-- Data for Name: clan_members; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_members (clan_id, player_id, rank, contribution, joined_at, last_active_at, probation_until) FROM stdin;
\.


--
-- TOC entry 5762 (class 0 OID 34874)
-- Dependencies: 327
-- Data for Name: clan_permissions; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_permissions (clan_id, rank, permission_code, allowed) FROM stdin;
\.


--
-- TOC entry 5771 (class 0 OID 35034)
-- Dependencies: 336
-- Data for Name: clan_quest_contributions; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_quest_contributions (clan_quest_id, player_id, contribution_json, eligibility) FROM stdin;
\.


--
-- TOC entry 5769 (class 0 OID 35003)
-- Dependencies: 334
-- Data for Name: clan_quest_defs; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_quest_defs (id, quest_code, config_version_id, objective_json, reward_json, duration_seconds) FROM stdin;
\.


--
-- TOC entry 5770 (class 0 OID 35018)
-- Dependencies: 335
-- Data for Name: clan_quests; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_quests (id, clan_id, quest_code, starts_at, ends_at, progress_json, status, version) FROM stdin;
\.


--
-- TOC entry 5766 (class 0 OID 34950)
-- Dependencies: 331
-- Data for Name: clan_tech_defs; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_tech_defs (id, tech_code, config_version_id, branch_code, max_level, level_table, effects) FROM stdin;
\.


--
-- TOC entry 5767 (class 0 OID 34966)
-- Dependencies: 332
-- Data for Name: clan_technology; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clan_technology (clan_id, tech_code, level, progress_points, version) FROM stdin;
\.


--
-- TOC entry 5760 (class 0 OID 34821)
-- Dependencies: 325
-- Data for Name: clans; Type: TABLE DATA; Schema: clan; Owner: lost_kingsland
--

COPY clan.clans (id, public_id, name, tag, leader_player_id, level, xp, member_cap, join_policy, description, banner_key, created_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5739 (class 0 OID 34472)
-- Dependencies: 304
-- Data for Name: actor_snapshots; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.actor_snapshots (id, combat_id, actor_key, actor_type, source_entity_id, level, realm_code, realm_minor_stage, tags, stats, loadout, effects, initial_hp, initial_resource) FROM stdin;
\.


--
-- TOC entry 5740 (class 0 OID 34491)
-- Dependencies: 305
-- Data for Name: combat_actions; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.combat_actions (id, combat_id, round_number, sequence_no, actor_key, target_key, action_type, action_code, command_json, expected_state_version, submitted_at) FROM stdin;
\.


--
-- TOC entry 5743 (class 0 OID 34526)
-- Dependencies: 308
-- Data for Name: combat_events; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.combat_events (id, combat_id, sequence_no, round_number, phase, actor_key, target_key, event_type, source_code, numeric_payload, detail_payload, created_at) FROM stdin;
\.


--
-- TOC entry 5738 (class 0 OID 34439)
-- Dependencies: 303
-- Data for Name: combat_instances; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.combat_instances (id, player_id, hero_id, source_type, source_id, profile_code, execution_mode, auto_policy_version, combat_version, config_version_id, seed_ref, rng_algorithm_version, seed_commitment, input_snapshot_hash, replay_manifest, status, round_number, current_actor_ref, summary_state, created_at, started_at, ended_at, settled_at, version) FROM stdin;
\.


--
-- TOC entry 5746 (class 0 OID 34564)
-- Dependencies: 311
-- Data for Name: combat_settlements; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.combat_settlements (id, combat_id, outcome, reward_operation_id, score_json, contribution_json, settled_at) FROM stdin;
\.


--
-- TOC entry 5745 (class 0 OID 34545)
-- Dependencies: 310
-- Data for Name: rng_draws; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.rng_draws (id, combat_id, stream_code, draw_index, event_sequence_no, value_numeric, detail_payload, created_at) FROM stdin;
\.


--
-- TOC entry 5741 (class 0 OID 34508)
-- Dependencies: 306
-- Data for Name: status_instances; Type: TABLE DATA; Schema: combat; Owner: lost_kingsland
--

COPY combat.status_instances (id, combat_id, target_key, source_key, status_code, status_version, stacks, remaining_rounds, potency_snapshot, state_json, applied_round, expires_round, active) FROM stdin;
\.


--
-- TOC entry 5775 (class 0 OID 35128)
-- Dependencies: 340
-- Data for Name: commander_defs; Type: TABLE DATA; Schema: commander; Owner: lost_kingsland
--

COPY commander.commander_defs (id, code, config_version_id, name_key, rarity_code, archetype_tags, role_tags, base_profile, skill_profile, talent_profile, acquisition_rule, max_level, gameplay_enabled, status) FROM stdin;
\.


--
-- TOC entry 5777 (class 0 OID 35184)
-- Dependencies: 342
-- Data for Name: commander_presets; Type: TABLE DATA; Schema: commander; Owner: lost_kingsland
--

COPY commander.commander_presets (id, player_id, name, primary_commander_id, secondary_commander_id, context_code, preset_json, active, version) FROM stdin;
\.


--
-- TOC entry 5778 (class 0 OID 35215)
-- Dependencies: 343
-- Data for Name: level_up_events; Type: TABLE DATA; Schema: commander; Owner: lost_kingsland
--

COPY commander.level_up_events (id, player_commander_id, player_id, from_level, to_level, gold_cost, ledger_operation_id, idempotency_key, created_at) FROM stdin;
\.


--
-- TOC entry 5776 (class 0 OID 35153)
-- Dependencies: 341
-- Data for Name: player_commanders; Type: TABLE DATA; Schema: commander; Owner: lost_kingsland
--

COPY commander.player_commanders (id, player_id, commander_code, level, xp, gold_spent_total, star_level, skill_state, talent_state, equipment_state, status, acquired_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5806 (class 0 OID 35975)
-- Dependencies: 371
-- Data for Name: entitlements; Type: TABLE DATA; Schema: commerce; Owner: lost_kingsland
--

COPY commerce.entitlements (id, player_id, entitlement_code, source_payment_id, granted_at, expires_at, revoked_at, state_json) FROM stdin;
\.


--
-- TOC entry 5803 (class 0 OID 35906)
-- Dependencies: 368
-- Data for Name: offer_defs; Type: TABLE DATA; Schema: commerce; Owner: lost_kingsland
--

COPY commerce.offer_defs (id, offer_code, config_version_id, product_type, eligibility_rule, reward_bundle, purchase_limits, sku_map, status) FROM stdin;
\.


--
-- TOC entry 5804 (class 0 OID 35927)
-- Dependencies: 369
-- Data for Name: offer_instances; Type: TABLE DATA; Schema: commerce; Owner: lost_kingsland
--

COPY commerce.offer_instances (id, player_id, offer_def_id, offer_code, price_sku, starts_at, expires_at, eligibility_snapshot, purchase_count, version) FROM stdin;
\.


--
-- TOC entry 5805 (class 0 OID 35949)
-- Dependencies: 370
-- Data for Name: payments; Type: TABLE DATA; Schema: commerce; Owner: lost_kingsland
--

COPY commerce.payments (id, player_id, platform, provider_event_id, external_txn_id, offer_instance_id, amount_minor, currency, status, receipt_hash, entitlement_operation_id, received_at, validated_at, settled_at, metadata) FROM stdin;
\.


--
-- TOC entry 5807 (class 0 OID 35995)
-- Dependencies: 372
-- Data for Name: refunds; Type: TABLE DATA; Schema: commerce; Owner: lost_kingsland
--

COPY commerce.refunds (id, payment_id, provider_refund_id, amount_minor, reason_code, idempotency_key, status, created_at, resolved_at) FROM stdin;
\.


--
-- TOC entry 5793 (class 0 OID 35657)
-- Dependencies: 358
-- Data for Name: arena_matches; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.arena_matches (id, season_id, attacker_player_id, defender_player_id, defense_snapshot_id, combat_id, attacker_rating_before, defender_rating_before, attacker_rating_after, defender_rating_after, result, created_at, settled_at) FROM stdin;
\.


--
-- TOC entry 5791 (class 0 OID 35612)
-- Dependencies: 356
-- Data for Name: arena_profiles; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.arena_profiles (player_id, rating, mmr, wins, losses, season_id, defense_snapshot_id, attempts_used, attempts_reset_at, version) FROM stdin;
\.


--
-- TOC entry 5794 (class 0 OID 35689)
-- Dependencies: 359
-- Data for Name: clan_sieges; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.clan_sieges (id, season_id, clan_a_id, clan_b_id, status, roster_lock_at, opens_at, closes_at, clan_a_score, clan_b_score, rules_snapshot, winner_clan_id, version) FROM stdin;
\.


--
-- TOC entry 5792 (class 0 OID 35633)
-- Dependencies: 357
-- Data for Name: defense_snapshots; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.defense_snapshots (id, player_id, hero_id, snapshot_json, combat_power_estimate, ai_policy_version, created_at, valid_until, hash) FROM stdin;
\.


--
-- TOC entry 5790 (class 0 OID 35593)
-- Dependencies: 355
-- Data for Name: seasons; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.seasons (id, season_code, name_key, status, starts_at, conflict_at, settlement_at, closes_at, config_version_id, reset_rule, reward_rule, version) FROM stdin;
\.


--
-- TOC entry 5796 (class 0 OID 35749)
-- Dependencies: 361
-- Data for Name: siege_attacks; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.siege_attacks (id, siege_id, attacker_player_id, defender_player_id, defense_snapshot_id, attack_token_no, combat_id, result, score, objective_json, settled_at) FROM stdin;
\.


--
-- TOC entry 5795 (class 0 OID 35721)
-- Dependencies: 360
-- Data for Name: siege_rosters; Type: TABLE DATA; Schema: competitive; Owner: lost_kingsland
--

COPY competitive.siege_rosters (siege_id, clan_id, player_id, defense_snapshot_id, node_key, fortification_json) FROM stdin;
\.


--
-- TOC entry 5693 (class 0 OID 33455)
-- Dependencies: 258
-- Data for Name: affinity_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.affinity_defs (id, code, config_version_id, name_key, resonance_curve, tags) FROM stdin;
3c79fd5c-0038-45cb-a8f4-cd5e21b194d2	FLAME	1	affinity.flame.name	{}	{}
3471a806-0305-4b3a-9c9f-b3b33360d7ef	FROST	1	affinity.frost.name	{}	{}
08536348-f72c-4615-be10-80b6aed8f934	STORM	1	affinity.storm.name	{}	{}
af37a039-af80-4d38-ab4f-f5f1a95eb7f3	NATURE	1	affinity.nature.name	{}	{}
775e1181-6c3a-41df-96bb-ad02b071be21	LIGHT	1	affinity.light.name	{}	{}
13fe50b1-7b0b-4053-a433-c03cdec7e674	SHADOW	1	affinity.shadow.name	{}	{}
49872de9-02f1-4a64-b2e8-00aa4c98d962	VOID	1	affinity.void.name	{}	{}
\.


--
-- TOC entry 5691 (class 0 OID 33417)
-- Dependencies: 256
-- Data for Name: bloodline_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.bloodline_defs (id, code, race_code, config_version_id, tier, effects, unlock_rule) FROM stdin;
\.


--
-- TOC entry 5707 (class 0 OID 33715)
-- Dependencies: 272
-- Data for Name: building_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.building_defs (id, code, config_version_id, name_key, max_level, level_table) FROM stdin;
\.


--
-- TOC entry 5709 (class 0 OID 33748)
-- Dependencies: 274
-- Data for Name: combat_profiles; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.combat_profiles (id, profile_code, config_version_id, crit_cap, crit_damage_cap, penetration_cap, realm_pressure_cap, healing_modifier, shield_modifier, cc_modifier, constants) FROM stdin;
\.


--
-- TOC entry 5704 (class 0 OID 33662)
-- Dependencies: 269
-- Data for Name: enemy_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.enemy_defs (id, code, config_version_id, enemy_type, name_key, base_stats, skills, ai_policy, reward_table_code, tags) FROM stdin;
\.


--
-- TOC entry 5695 (class 0 OID 33495)
-- Dependencies: 260
-- Data for Name: exploration_floor_profiles; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.exploration_floor_profiles (id, config_version_id, min_floor, max_floor, max_natural_rarity, rarity_weights, item_level_rule, monster_profile) FROM stdin;
\.


--
-- TOC entry 5698 (class 0 OID 33538)
-- Dependencies: 263
-- Data for Name: march_slot_unlock_rules; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.march_slot_unlock_rules (id, config_version_id, city_hall_level_min, max_march_slots) FROM stdin;
\.


--
-- TOC entry 5696 (class 0 OID 33515)
-- Dependencies: 261
-- Data for Name: monster_reward_profiles; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.monster_reward_profiles (id, profile_code, config_version_id, guaranteed_equipment_count, gold_rule, sp_rule, construction_resource_rule, equipment_rule, crafting_choice_material_rule) FROM stdin;
\.


--
-- TOC entry 5706 (class 0 OID 33698)
-- Dependencies: 271
-- Data for Name: node_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.node_defs (id, region_def_id, node_code, node_type, ordinal, encounter_json, route_choices, reward_table_code) FROM stdin;
\.


--
-- TOC entry 5692 (class 0 OID 33435)
-- Dependencies: 257
-- Data for Name: path_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.path_defs (id, code, config_version_id, name_key, resource_type, base_stats, starting_kit, starting_technique_code, talent_affinity, display_metadata, rules) FROM stdin;
6f7bd763-5ddf-491a-90a3-800d3cd6e517	VANGUARD	1	path.vanguard.name	\N	{}	{}	\N	{}	{}	{}
815a90d7-3155-45e0-8133-a5501e5f9e4c	RANGER	1	path.ranger.name	\N	{}	{}	\N	{}	{}	{}
2d18b301-bf44-4306-b61a-ab73fd3aa436	ARCANIST	1	path.arcanist.name	\N	{}	{}	\N	{}	{}	{}
45e7686d-0cea-44d1-8ccc-cb8bd05860f8	SHADOW	1	path.shadow.name	\N	{}	{}	\N	{}	{}	{}
\.


--
-- TOC entry 5702 (class 0 OID 33614)
-- Dependencies: 267
-- Data for Name: path_starting_techniques; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.path_starting_techniques (path_code, technique_code, config_version_id, selection_order, is_default) FROM stdin;
\.


--
-- TOC entry 5700 (class 0 OID 33570)
-- Dependencies: 265
-- Data for Name: profession_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.profession_defs (id, code, config_version_id, name_key, rules) FROM stdin;
\.


--
-- TOC entry 5690 (class 0 OID 33397)
-- Dependencies: 255
-- Data for Name: race_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.race_defs (id, code, config_version_id, name_key, description_key, base_effects, passive_metadata, affinity_metadata, racial_technique_code, lore_metadata, status) FROM stdin;
d1e149d9-e3aa-49df-939f-cc483f017960	HUMAN	1	race.human.name	race.human.description	[]	{}	{}	\N	{}	ACTIVE
578896e2-30e8-466e-9680-c89781e56dc9	SYLVAN	1	race.sylvan.name	race.sylvan.description	[]	{}	{}	\N	{}	ACTIVE
111a4345-7894-46eb-a090-53f76e4f7036	DRAKARI	1	race.drakari.name	race.drakari.description	[]	{}	{}	\N	{}	ACTIVE
d4b70679-3859-4d5a-8cc9-c3286533016f	UMBRAL	1	race.umbral.name	race.umbral.description	[]	{}	{}	\N	{}	ACTIVE
\.


--
-- TOC entry 5694 (class 0 OID 33472)
-- Dependencies: 259
-- Data for Name: realm_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.realm_defs (id, code, config_version_id, ordinal, minor_stage_count, base_stat_budget, unlocks, breakthrough_rule, base_tribulation_chance) FROM stdin;
\.


--
-- TOC entry 5705 (class 0 OID 33681)
-- Dependencies: 270
-- Data for Name: region_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.region_defs (id, code, config_version_id, name_key, ordinal, theme_key, unlock_rule, modifiers, loot_profile_code) FROM stdin;
\.


--
-- TOC entry 5708 (class 0 OID 33730)
-- Dependencies: 273
-- Data for Name: research_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.research_defs (id, code, config_version_id, tree_code, max_level, prerequisites, level_table, effects) FROM stdin;
\.


--
-- TOC entry 5699 (class 0 OID 33552)
-- Dependencies: 264
-- Data for Name: sect_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.sect_defs (id, code, config_version_id, name_key, philosophy_tags, join_rule, leave_rule) FROM stdin;
\.


--
-- TOC entry 5689 (class 0 OID 33388)
-- Dependencies: 254
-- Data for Name: tags; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.tags (id, tag_code, category, description) FROM stdin;
\.


--
-- TOC entry 5701 (class 0 OID 33586)
-- Dependencies: 266
-- Data for Name: technique_defs; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.technique_defs (id, code, config_version_id, technique_type, name_key, max_level, tags, martial_scaling, mystic_scaling, flat_power, skill_coefficient, damage_channel, resource_cost, cooldown_rounds, effect_list, unlock_rule, profile_scaling) FROM stdin;
\.


--
-- TOC entry 5703 (class 0 OID 33647)
-- Dependencies: 268
-- Data for Name: technique_tag_links; Type: TABLE DATA; Schema: content; Owner: lost_kingsland
--

COPY content.technique_tag_links (technique_def_id, tag_id) FROM stdin;
\.


--
-- TOC entry 5753 (class 0 OID 34711)
-- Dependencies: 318
-- Data for Name: asset_defs; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.asset_defs (code, asset_type, integrity_tier, precision_scale, transferable, metadata) FROM stdin;
WOOD	BASE_RESOURCE	B	0	f	{}
ORE	BASE_RESOURCE	B	0	f	{}
FOOD	BASE_RESOURCE	B	0	f	{}
GOLD	BASE_RESOURCE	B	0	f	{}
ESSENCE	CRAFT_MATERIAL	B	0	f	{}
CULTIVATION_QI	CULTIVATION	B	0	f	{}
SKILL_POINT	PROGRESSION	B	0	f	{}
GEMS	PREMIUM	A	0	f	{}
CLAN_MARKS	CLAN	B	0	f	{}
SEASON_TOKEN	SEASON	B	0	f	{}
\.


--
-- TOC entry 5759 (class 0 OID 34804)
-- Dependencies: 324
-- Data for Name: inventory_operations; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.inventory_operations (id, player_id, operation_type, source_type, source_id, idempotency_key, before_hash, after_hash, detail_json, created_at) FROM stdin;
\.


--
-- TOC entry 5754 (class 0 OID 34721)
-- Dependencies: 319
-- Data for Name: ledger_accounts; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.ledger_accounts (id, owner_scope, owner_id, asset_code, available_balance, reserved_balance, sequence_no, version, created_at) FROM stdin;
\.


--
-- TOC entry 5757 (class 0 OID 34759)
-- Dependencies: 322
-- Data for Name: ledger_entries; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.ledger_entries (id, operation_id, ledger_account_id, account_sequence, delta_available, delta_reserved, balance_before, balance_after, entry_role, created_at) FROM stdin;
\.


--
-- TOC entry 5755 (class 0 OID 34740)
-- Dependencies: 320
-- Data for Name: ledger_operations; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.ledger_operations (id, operation_type, actor_type, actor_id, source_type, source_id, reason_code, idempotency_key, config_version_id, request_id, status, created_at, metadata) FROM stdin;
\.


--
-- TOC entry 5758 (class 0 OID 34782)
-- Dependencies: 323
-- Data for Name: reward_grants; Type: TABLE DATA; Schema: economy; Owner: lost_kingsland
--

COPY economy.reward_grants (id, player_id, grant_type, source_type, source_id, eligibility_key, reward_bundle, operation_id, status, created_at, granted_at) FROM stdin;
\.


--
-- TOC entry 5720 (class 0 OID 34063)
-- Dependencies: 285
-- Data for Name: breakthrough_attempts; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.breakthrough_attempts (id, hero_id, from_realm_code, to_realm_code, from_stage, to_stage, xp_before, xp_after, fail_streak_before, fail_streak_after, base_success_chance, pity_bonus, booster_bonus, final_success_chance, rng_roll, protection_used, booster_used, protection_item_code, booster_item_code, preparation_json, combat_instance_id, result, consume_operation_id, pity_progress, started_at, resolved_at, config_version_id) FROM stdin;
\.


--
-- TOC entry 5712 (class 0 OID 33872)
-- Dependencies: 277
-- Data for Name: character_creation_sessions; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.character_creation_sessions (id, player_id, config_version_id, status, hero_name, race_code, path_code, affinity_code, starting_technique_code, current_step, state_json, confirmed_hero_id, created_at, updated_at, completed_at, version) FROM stdin;
\.


--
-- TOC entry 5714 (class 0 OID 33939)
-- Dependencies: 279
-- Data for Name: hero_affinities; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.hero_affinities (hero_id, affinity_code, config_version_id, slot, resonance_score, mastery_level) FROM stdin;
\.


--
-- TOC entry 5713 (class 0 OID 33924)
-- Dependencies: 278
-- Data for Name: hero_bloodlines; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.hero_bloodlines (hero_id, bloodline_code, tier, awakened_at, progress, state_json) FROM stdin;
\.


--
-- TOC entry 5711 (class 0 OID 33822)
-- Dependencies: 276
-- Data for Name: hero_source_stats; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.hero_source_stats (hero_id, martial_power, mystic_power, vitality, armor, ward, crit_rating, crit_resist, penetration, defense_break, status_potency, status_resist, speed, accuracy_rating, evasion_rating, toughness_rating, combo_rating, bleed_rating, lifesteal_pct, damage_bonus_pct, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5718 (class 0 OID 34030)
-- Dependencies: 283
-- Data for Name: hero_talent_allocations; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.hero_talent_allocations (hero_id, talent_node_id, rank, updated_at) FROM stdin;
\.


--
-- TOC entry 5715 (class 0 OID 33964)
-- Dependencies: 280
-- Data for Name: hero_techniques; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.hero_techniques (hero_id, technique_code, config_version_id, learned_level, mastery_xp, unlocked_at, source_type, source_id) FROM stdin;
\.


--
-- TOC entry 5710 (class 0 OID 33767)
-- Dependencies: 275
-- Data for Name: player_heroes; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.player_heroes (id, player_id, name, level, xp, race_code, path_code, character_config_version_id, realm_code, realm_minor_stage, cultivation_xp, tribulation_fail_streak, sect_code, sect_rank, sect_reputation, active_loadout_id, portrait_key, creation_completed_at, created_at, updated_at, version) FROM stdin;
30000000-0000-0000-0000-000000000001	20000000-0000-0000-0000-000000000001	Aldric	15	7200	HUMAN	VANGUARD	1	MORTAL	6	2200	0	\N	0	0	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
30000000-0000-0000-0000-000000000002	20000000-0000-0000-0000-000000000002	Nyx	25	18200	UMBRAL	SHADOW	1	MORTAL	9	6100	0	\N	0	0	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
30000000-0000-0000-0000-000000000003	20000000-0000-0000-0000-000000000003	Elyra	40	45200	SYLVAN	ARCANIST	1	MORTAL	10	10000	0	\N	0	0	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
\.


--
-- TOC entry 5719 (class 0 OID 34047)
-- Dependencies: 284
-- Data for Name: profession_progress; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.profession_progress (hero_id, profession_code, level, xp, specialization_json, is_specialized) FROM stdin;
\.


--
-- TOC entry 5717 (class 0 OID 34012)
-- Dependencies: 282
-- Data for Name: talent_nodes; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.talent_nodes (id, path_code, node_code, config_version_id, tier, prerequisites, max_rank, effects) FROM stdin;
\.


--
-- TOC entry 5716 (class 0 OID 33987)
-- Dependencies: 281
-- Data for Name: technique_loadouts; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.technique_loadouts (id, hero_id, name, slot_layout, created_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5721 (class 0 OID 34105)
-- Dependencies: 286
-- Data for Name: voice_cultivation_sessions; Type: TABLE DATA; Schema: hero; Owner: lost_kingsland
--

COPY hero.voice_cultivation_sessions (id, hero_id, player_id, guild_binding_id, discord_channel_id, joined_at, left_at, eligible_seconds, qi_granted, eligibility_json, grant_operation_id, config_version_id, settled_at, version) FROM stdin;
\.


--
-- TOC entry 5681 (class 0 OID 33261)
-- Dependencies: 246
-- Data for Name: accounts; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.accounts (id, public_id, status, locale, timezone, created_at, updated_at, version) FROM stdin;
10000000-0000-0000-0000-000000000001	11000000-0000-0000-0000-000000000001	ACTIVE	vi-VN	Asia/Ho_Chi_Minh	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
10000000-0000-0000-0000-000000000002	11000000-0000-0000-0000-000000000002	ACTIVE	vi-VN	Asia/Ho_Chi_Minh	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
10000000-0000-0000-0000-000000000003	11000000-0000-0000-0000-000000000003	ACTIVE	vi-VN	Asia/Ho_Chi_Minh	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
\.


--
-- TOC entry 5686 (class 0 OID 33353)
-- Dependencies: 251
-- Data for Name: discord_guild_bindings; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.discord_guild_bindings (id, discord_guild_id, owner_account_id, clan_id, game_channel_id, clan_channel_id, announcement_channel_id, settings_json, created_at, version) FROM stdin;
\.


--
-- TOC entry 5683 (class 0 OID 33291)
-- Dependencies: 248
-- Data for Name: discord_link_events; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.discord_link_events (id, discord_link_id, account_id, discord_user_id, event_type, reason_code, metadata, created_at) FROM stdin;
\.


--
-- TOC entry 5682 (class 0 OID 33276)
-- Dependencies: 247
-- Data for Name: discord_links; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.discord_links (id, account_id, discord_user_id, discord_username, linked_at, revoked_at, is_primary) FROM stdin;
\.


--
-- TOC entry 5687 (class 0 OID 33371)
-- Dependencies: 252
-- Data for Name: interaction_refs; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.interaction_refs (id, player_id, interaction_type, aggregate_type, aggregate_id, expected_version, expires_at, consumed_at, metadata, created_at) FROM stdin;
\.


--
-- TOC entry 5685 (class 0 OID 33337)
-- Dependencies: 250
-- Data for Name: player_settings; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.player_settings (player_id, notification_json, privacy_json, accessibility_json, updated_at) FROM stdin;
\.


--
-- TOC entry 5684 (class 0 OID 33313)
-- Dependencies: 249
-- Data for Name: players; Type: TABLE DATA; Schema: identity; Owner: lost_kingsland
--

COPY identity.players (id, account_id, display_name, account_level, account_xp, avatar_key, active_hero_id, active_screen_key, tutorial_step, created_at, updated_at, version) FROM stdin;
20000000-0000-0000-0000-000000000001	10000000-0000-0000-0000-000000000001	Dev_Vanguard	15	12500	\N	30000000-0000-0000-0000-000000000001	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
20000000-0000-0000-0000-000000000002	10000000-0000-0000-0000-000000000002	Dev_Shadow	25	38600	\N	30000000-0000-0000-0000-000000000002	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
20000000-0000-0000-0000-000000000003	10000000-0000-0000-0000-000000000003	Dev_Arcanist	40	90500	\N	30000000-0000-0000-0000-000000000003	\N	\N	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
\.


--
-- TOC entry 5732 (class 0 OID 34306)
-- Dependencies: 297
-- Data for Name: craft_jobs; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.craft_jobs (id, player_id, hero_id, recipe_code, building_id, status, input_operation_id, started_at, completes_at, completed_at, output_operation_id, result_json, config_version_id, version) FROM stdin;
\.


--
-- TOC entry 5725 (class 0 OID 34177)
-- Dependencies: 290
-- Data for Name: equipment_affix_combinations; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.equipment_affix_combinations (id, equipment_slot, combo_code, stat_codes, config_version_id, notes) FROM stdin;
1	HELM	HELM_COMBO_01	{HP_FLAT,EVASION_RATING}	1	User-specified possible combination.
2	HELM	HELM_COMBO_02	{HP_FLAT,ARMOR_FLAT}	1	User-specified possible combination.
3	HELM	HELM_COMBO_03	{HP_FLAT,TOUGHNESS_RATING}	1	User-specified possible combination.
4	HELM	HELM_COMBO_04	{HP_FLAT,ARMOR_FLAT,CRIT_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
5	HELM	HELM_COMBO_05	{HP_FLAT,TOUGHNESS_RATING,COMBO_RATING,ACCURACY_RATING,CRIT_RATING}	1	User-specified possible combination.
6	CHEST	CHEST_COMBO_01	{HP_FLAT,ARMOR_FLAT}	1	User-specified possible combination.
7	CHEST	CHEST_COMBO_02	{ARMOR_FLAT,TOUGHNESS_RATING}	1	User-specified possible combination.
8	CHEST	CHEST_COMBO_03	{ARMOR_FLAT,TOUGHNESS_RATING,COMBO_RATING,ACCURACY_RATING,CRIT_RATING}	1	User-specified possible combination.
9	CHEST	CHEST_COMBO_04	{HP_FLAT,ARMOR_FLAT,CRIT_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
10	CHEST	CHEST_COMBO_05	{HP_FLAT,ARMOR_FLAT,TOUGHNESS_RATING,CRIT_RATING,LIFESTEAL_PCT}	1	Added balance profile to provide one 5-stat Legendary sample for Chest.
11	SHOULDER	SHOULDER_COMBO_01	{HP_FLAT,TOUGHNESS_RATING}	1	User-specified possible combination.
12	SHOULDER	SHOULDER_COMBO_02	{ARMOR_FLAT,TOUGHNESS_RATING}	1	User-specified possible combination.
13	SHOULDER	SHOULDER_COMBO_03	{EVASION_RATING,TOUGHNESS_RATING}	1	User-specified possible combination.
14	SHOULDER	SHOULDER_COMBO_04	{TOUGHNESS_RATING,ARMOR_FLAT,ACCURACY_RATING,CRIT_RATING}	1	User-specified possible combination.
15	SHOULDER	SHOULDER_COMBO_05	{TOUGHNESS_RATING,HP_FLAT,COMBO_RATING,BLEED_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
16	AMULET	AMULET_COMBO_01	{ACCURACY_RATING,DAMAGE_BONUS_PCT,COMBO_RATING}	1	User-specified possible combination.
17	AMULET	AMULET_COMBO_02	{ACCURACY_RATING,ARMOR_FLAT,CRIT_RATING,BLEED_RATING,COMBO_RATING}	1	User-specified possible combination.
18	AMULET	AMULET_COMBO_03	{ARMOR_FLAT,ACCURACY_RATING}	1	User-specified possible combination.
19	AMULET	AMULET_COMBO_04	{ACCURACY_RATING,HP_FLAT}	1	User-specified possible combination.
20	AMULET	AMULET_COMBO_05	{ACCURACY_RATING,HP_FLAT,EVASION_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
21	BOOTS	BOOTS_COMBO_01	{EVASION_RATING,ACCURACY_RATING}	1	User-specified possible combination.
22	BOOTS	BOOTS_COMBO_02	{EVASION_RATING,COMBO_RATING}	1	User-specified possible combination.
23	BOOTS	BOOTS_COMBO_03	{EVASION_RATING,HP_FLAT}	1	User-specified possible combination.
24	BOOTS	BOOTS_COMBO_04	{EVASION_RATING,COMBO_RATING,ARMOR_FLAT,ACCURACY_RATING}	1	User-specified possible combination.
25	BOOTS	BOOTS_COMBO_05	{EVASION_RATING,ACCURACY_RATING,TOUGHNESS_RATING,CRIT_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
26	RING	RING_COMBO_01	{CRIT_RATING,HP_FLAT}	1	User-specified possible combination.
27	RING	RING_COMBO_02	{CRIT_RATING,ARMOR_FLAT}	1	User-specified possible combination.
28	RING	RING_COMBO_03	{CRIT_RATING,DAMAGE_BONUS_PCT,COMBO_RATING}	1	User-specified possible combination.
29	RING	RING_COMBO_04	{CRIT_RATING,HP_FLAT,EVASION_RATING,LIFESTEAL_PCT}	1	User-specified possible combination.
30	RING	RING_COMBO_05	{CRIT_RATING,ARMOR_FLAT,ACCURACY_RATING,BLEED_RATING,COMBO_RATING}	1	User-specified possible combination.
31	OFF_HAND	OFF_HAND_COMBO_01	{DAMAGE_BONUS_PCT,COMBO_RATING}	1	User-specified possible combination.
32	OFF_HAND	OFF_HAND_COMBO_02	{DAMAGE_BONUS_PCT,ACCURACY_RATING}	1	User-specified possible combination.
33	OFF_HAND	OFF_HAND_COMBO_03	{DAMAGE_BONUS_PCT,BLEED_RATING}	1	User-specified possible combination.
34	OFF_HAND	OFF_HAND_COMBO_04	{DAMAGE_BONUS_PCT,CRIT_RATING,LIFESTEAL_PCT,TOUGHNESS_RATING}	1	User-specified possible combination.
35	OFF_HAND	OFF_HAND_COMBO_05	{DAMAGE_BONUS_PCT,COMBO_RATING,BLEED_RATING,EVASION_RATING,HP_FLAT}	1	User-specified possible combination.
36	WEAPON	WEAPON_COMBO_01	{DAMAGE_BONUS_PCT,COMBO_RATING}	1	User-specified possible combination.
37	WEAPON	WEAPON_COMBO_02	{DAMAGE_BONUS_PCT,ACCURACY_RATING}	1	User-specified possible combination.
38	WEAPON	WEAPON_COMBO_03	{DAMAGE_BONUS_PCT,BLEED_RATING}	1	User-specified possible combination.
39	WEAPON	WEAPON_COMBO_04	{DAMAGE_BONUS_PCT,CRIT_RATING,LIFESTEAL_PCT,TOUGHNESS_RATING}	1	User-specified possible combination.
40	WEAPON	WEAPON_COMBO_05	{DAMAGE_BONUS_PCT,COMBO_RATING,BLEED_RATING,EVASION_RATING,HP_FLAT}	1	User-specified possible combination.
41	PET	PET_COMBO_01	{DAMAGE_BONUS_PCT,HP_FLAT}	1	User-specified possible combination.
42	PET	PET_COMBO_02	{DAMAGE_BONUS_PCT,ACCURACY_RATING}	1	User-specified possible combination.
43	PET	PET_COMBO_03	{LIFESTEAL_PCT,ARMOR_FLAT}	1	User-specified possible combination.
44	PET	PET_COMBO_04	{COMBO_RATING,ACCURACY_RATING}	1	User-specified possible combination.
45	PET	PET_COMBO_05	{EVASION_RATING,ACCURACY_RATING}	1	User-specified possible combination.
46	PET	PET_COMBO_06	{COMBO_RATING,CRIT_RATING}	1	User-specified possible combination.
47	PET	PET_COMBO_07	{HP_FLAT,ARMOR_FLAT}	1	User-specified possible combination.
48	PET	PET_COMBO_08	{BLEED_RATING,COMBO_RATING}	1	User-specified possible combination.
\.


--
-- TOC entry 5729 (class 0 OID 34256)
-- Dependencies: 294
-- Data for Name: equipment_loadouts; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.equipment_loadouts (id, hero_id, name, slots, is_active, version, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5817 (class 0 OID 46114)
-- Dependencies: 387
-- Data for Name: equipment_set_bonuses; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.equipment_set_bonuses (set_code, pieces_required, bonus_type, bonus_params, display_text_vi, design_note, enabled) FROM stdin;
SET_COMMON_A	2	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Hắc Thiết Hộ Thể — 2 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_A	4	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Hắc Thiết Hộ Thể — 4 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_A	6	STAT_PCT	{"stat": "HP_FLAT", "value": 0.03}	+3% Máu	Hắc Thiết Hộ Thể — 6 món: +3% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_A	8	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Hắc Thiết Hộ Thể — 8 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_B	2	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Liệp Phong — 2 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_B	4	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Liệp Phong — 4 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_B	6	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Liệp Phong — 6 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_COMMON_B	8	STAT_PCT	{"stat": "EVASION_RATING", "value": 0.03}	+3% Né	Liệp Phong — 8 món: +3% Né. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_A	2	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Linh Cốt Thanh Tâm — 2 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_A	4	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Linh Cốt Thanh Tâm — 4 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_A	6	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.03}	+3% Toughness	Linh Cốt Thanh Tâm — 6 món: +3% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_A	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Linh Cốt Thanh Tâm — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_B	2	STAT_PCT	{"stat": "EVASION_RATING", "value": 0.02}	+2% Né	Thanh Phong Truy Ảnh — 2 món: +2% Né. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_B	4	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Thanh Phong Truy Ảnh — 4 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_B	6	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.03}	+3% Combo	Thanh Phong Truy Ảnh — 6 món: +3% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_UNCOMMON_B	8	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Thanh Phong Truy Ảnh — 8 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_A	2	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Huyền Giáp Bất Động — 2 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_A	4	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Huyền Giáp Bất Động — 4 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_A	6	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.03}	+3% Toughness	Huyền Giáp Bất Động — 6 món: +3% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_A	8	STAT_PCT	{"stat": "EVASION_RATING", "value": 0.03}	+3% Né	Huyền Giáp Bất Động — 8 món: +3% Né. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_B	2	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.02}	+2% Bleed	Huyết Sát — 2 món: +2% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_B	4	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Huyết Sát — 4 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_B	6	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Huyết Sát — 6 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RARE_B	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Huyết Sát — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_A	2	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Cửu U Huyền Minh — 2 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_A	4	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Cửu U Huyền Minh — 4 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_A	6	STAT_PCT	{"stat": "HP_FLAT", "value": 0.03}	+3% Máu	Cửu U Huyền Minh — 6 món: +3% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_A	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Cửu U Huyền Minh — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_B	2	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Thiên Lôi — 2 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_B	4	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.02}	+2% Crit	Thiên Lôi — 4 món: +2% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_B	6	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.03}	+3% Combo	Thiên Lôi — 6 món: +3% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_EPIC_B	8	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.04}	+4% Bleed	Thiên Lôi — 8 món: +4% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_A	2	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Chân Long Trấn Nhạc — 2 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_A	4	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Chân Long Trấn Nhạc — 4 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_A	6	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.03}	+3% Giáp	Chân Long Trấn Nhạc — 6 món: +3% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_A	8	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Chân Long Trấn Nhạc — 8 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_B	2	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.02}	+2% Crit	Phượng Hoàng Niết Bàn — 2 món: +2% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_B	4	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Phượng Hoàng Niết Bàn — 4 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_B	6	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Phượng Hoàng Niết Bàn — 6 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_LEGENDARY_B	8	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.04}	+4% Bleed	Phượng Hoàng Niết Bàn — 8 món: +4% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_A	2	STAT_PCT	{"stat": "EVASION_RATING", "value": 0.02}	+2% Né	Thái Hư Vô Tướng — 2 món: +2% Né. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_A	4	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Thái Hư Vô Tướng — 4 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_A	6	STAT_PCT	{"stat": "HP_FLAT", "value": 0.03}	+3% Máu	Thái Hư Vô Tướng — 6 món: +3% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_A	8	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.03}	+3% Giáp	Thái Hư Vô Tướng — 8 món: +3% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_B	2	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.02}	+2% Bleed	Tu La Huyết Ngục — 2 món: +2% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_B	4	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.02}	+2% Crit	Tu La Huyết Ngục — 4 món: +2% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_B	6	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.03}	+3% Combo	Tu La Huyết Ngục — 6 món: +3% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_MYTHIC_B	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Tu La Huyết Ngục — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_A	2	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Hồng Hoang Bất Diệt — 2 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_A	4	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Hồng Hoang Bất Diệt — 4 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_A	6	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.03}	+3% Toughness	Hồng Hoang Bất Diệt — 6 món: +3% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_A	8	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.03}	+3% Accuracy	Hồng Hoang Bất Diệt — 8 món: +3% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_B	2	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Thái Cổ Chiến Thiên — 2 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_B	4	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Thái Cổ Chiến Thiên — 4 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_B	6	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Thái Cổ Chiến Thiên — 6 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_ANCIENT_B	8	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.04}	+4% Bleed	Thái Cổ Chiến Thiên — 8 món: +4% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_A	2	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Cửu Thiên Thánh Thể — 2 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_A	4	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.02}	+2% Giáp	Cửu Thiên Thánh Thể — 4 món: +2% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_A	6	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.03}	+3% Toughness	Cửu Thiên Thánh Thể — 6 món: +3% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_A	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Cửu Thiên Thánh Thể — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_B	2	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Thiên Đạo Vấn Kiếm — 2 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_B	4	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.02}	+2% Crit	Thiên Đạo Vấn Kiếm — 4 món: +2% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_B	6	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.03}	+3% Combo	Thiên Đạo Vấn Kiếm — 6 món: +3% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_DIVINE_B	8	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.04}	+4% Bleed	Thiên Đạo Vấn Kiếm — 8 món: +4% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_A	2	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Vạn Cổ Bất Hủ — 2 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_A	4	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Vạn Cổ Bất Hủ — 4 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_A	6	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.03}	+3% Giáp	Vạn Cổ Bất Hủ — 6 món: +3% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_A	8	STAT_PCT	{"stat": "EVASION_RATING", "value": 0.03}	+3% Né	Vạn Cổ Bất Hủ — 8 món: +3% Né. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_B	2	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.02}	+2% Bleed	Luân Hồi Táng Tiên — 2 món: +2% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_B	4	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Luân Hồi Táng Tiên — 4 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_B	6	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Luân Hồi Táng Tiên — 6 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_RELIC_B	8	STAT_PCT	{"stat": "LIFESTEAL_PCT", "unit": "PERCENTAGE_POINT", "value": 0.01}	+1 điểm % Lifesteal	Luân Hồi Táng Tiên — 8 món: +1 điểm % Lifesteal. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_A	2	STAT_PCT	{"stat": "HP_FLAT", "value": 0.02}	+2% Máu	Hỗn Độn Vô Cực — 2 món: +2% Máu. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_A	4	STAT_PCT	{"stat": "TOUGHNESS_RATING", "value": 0.02}	+2% Toughness	Hỗn Độn Vô Cực — 4 món: +2% Toughness. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_A	6	STAT_PCT	{"stat": "ARMOR_FLAT", "value": 0.03}	+3% Giáp	Hỗn Độn Vô Cực — 6 món: +3% Giáp. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_A	8	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.03}	+3% Accuracy	Hỗn Độn Vô Cực — 8 món: +3% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_B	2	STAT_PCT	{"stat": "ACCURACY_RATING", "value": 0.02}	+2% Accuracy	Đại Đạo Táng Thiên — 2 món: +2% Accuracy. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_B	4	STAT_PCT	{"stat": "COMBO_RATING", "value": 0.02}	+2% Combo	Đại Đạo Táng Thiên — 4 món: +2% Combo. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_B	6	STAT_PCT	{"stat": "CRIT_RATING", "value": 0.03}	+3% Crit	Đại Đạo Táng Thiên — 6 món: +3% Crit. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
SET_GOD_B	8	STAT_PCT	{"stat": "BLEED_RATING", "value": 0.04}	+4% Bleed	Đại Đạo Táng Thiên — 8 món: +4% Bleed. Bonus cộng additive vào stat family; không tạo multiplier độc lập. Mục tiêu là thưởng người ghép set nhưng không làm đồ lẻ có roll tốt mất giá trị.	t
\.


--
-- TOC entry 5816 (class 0 OID 46084)
-- Dependencies: 384
-- Data for Name: equipment_set_defs; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.equipment_set_defs (set_code, rarity, set_name, identity_summary, lore_summary, set_bonus, active) FROM stdin;
SET_COMMON_A	COMMON	Hắc Thiết Hộ Thể	Hộ thể nhập môn: ưu tiên Máu, Giáp, Toughness và khả năng sống sót; một số mảnh bổ sung Accuracy/Crit/Lifesteal để không bị thuần thủ.	Bộ pháp khí do các luyện khí sư phàm tục rèn từ hắc thiết. Không hoa mỹ nhưng bền, dễ nhận diện và là nền móng của con đường hộ thể.	{}	t
SET_COMMON_B	COMMON	Liệp Phong	Tấn công nhập môn: thiên Accuracy, Combo, Crit, Bleed và cơ động; đổi một phần độ lì để lấy nhịp đánh.	Trang bị của những tán tu săn yêu nơi sơn dã. Gió đi trước thân, lưỡi binh theo sau.	{}	t
SET_UNCOMMON_A	UNCOMMON	Linh Cốt Thanh Tâm	Sinh tồn linh phẩm: Máu/Giáp/Toughness làm trục, hỗ trợ hồi phục và ổn định nhịp chiến đấu.	Linh cốt được ôn dưỡng bằng thanh khí, giúp người mặc tâm thần ổn định và khí huyết bền bỉ.	{}	t
SET_UNCOMMON_B	UNCOMMON	Thanh Phong Truy Ảnh	Cơ động linh phẩm: Accuracy/Evasion/Combo/Crit nổi bật, phù hợp lối đánh truy kích và né phản công.	Tương truyền người mặc đủ bộ chỉ để lại một vệt thanh phong, bóng đã qua mà kiếm quang mới tới.	{}	t
SET_RARE_A	RARE	Huyền Giáp Bất Động	Phòng thủ huyền phẩm: Máu, Giáp, Toughness cao; các mảnh công thủ cho phép đứng lâu trong giao tranh.	Huyền giáp lấy ý Bất Động như sơn. Khí huyết tụ mà không tán, ngoại lực đến như sóng vỗ núi.	{}	t
SET_RARE_B	RARE	Huyết Sát	Áp lực huyền phẩm: Combo/Bleed/Crit/Accuracy là dấu ấn chính, có Evasion và Lifesteal ở các mảnh cao áp.	Mỗi vết máu trên Huyết Sát đều được coi là một sát niệm chưa tan. Càng giao chiến lâu, hung khí càng nặng.	{}	t
SET_EPIC_A	EPIC	Cửu U Huyền Minh	Sustain địa phẩm: phòng thủ, Máu và Toughness đan với hút máu/crit để chịu trận dài.	Huyền Minh khí từ Cửu U lạnh đến tận cốt tủy, lấy tĩnh chế động, lấy âm nhu hóa cương mãnh.	{}	t
SET_EPIC_B	EPIC	Thiên Lôi	Burst địa phẩm: Accuracy/Crit/Combo/Bleed và tốc độ tạo nhịp bộc phát, thích hợp kết liễu nhanh.	Thiên lôi không đánh hai lần vào cùng một chỗ; người dùng bộ này cũng không cần đòn thứ hai nếu đòn đầu đủ chuẩn.	{}	t
SET_LEGENDARY_A	LEGENDARY	Chân Long Trấn Nhạc	Hộ thể thiên phẩm: Máu/Giáp/Toughness là lõi, kết hợp sustain để trở thành tuyến trước khó lay chuyển.	Long uy trấn sơn hà. Tương truyền mỗi mảnh đều mang một tia chân long khí ngủ sâu trong linh văn.	{}	t
SET_LEGENDARY_B	LEGENDARY	Phượng Hoàng Niết Bàn	Công thủ thiên phẩm: Crit/Combo/Bleed/Accuracy đi cùng Lifesteal và Evasion; càng nguy hiểm càng có khả năng xoay trận.	Phượng hoàng chết trong lửa và sinh lại từ tro. Bộ này tượng trưng cho việc lấy hiểm cảnh đổi lấy một lần bùng cháy rực rỡ.	{}	t
SET_MYTHIC_A	MYTHIC	Thái Hư Vô Tướng	Mythic phòng thủ linh hoạt: HP/Toughness/Armor kết hợp né, chuẩn xác và sustain; khó bị khóa vào một kiểu khắc chế.	Thái Hư vốn vô hình vô tướng. Kẻ lĩnh ngộ được bộ này không lấy cứng chống cứng mà khiến công kích rơi vào khoảng không.	{}	t
SET_MYTHIC_B	MYTHIC	Tu La Huyết Ngục	Mythic sát thương: Bleed/Combo/Crit/Accuracy/Evasion, có hút máu; thiên về snowball và áp lực liên tục.	Huyết Ngục mở thì sát niệm hóa thực. Tương truyền Tu La mặc bộ này có thể dùng máu địch nuôi chiến ý của chính mình.	{}	t
SET_ANCIENT_A	ANCIENT	Hồng Hoang Bất Diệt	Ancient hộ đạo: sức bền cực cao, HP/Armor/Toughness làm nền; công thủ cân bằng ở các mảnh vũ khí/phụ trợ.	Di vật còn lại từ thời Hồng Hoang, khi thân thể đại năng được rèn như pháp bảo và một giọt huyết cũng nặng tựa núi.	{}	t
SET_ANCIENT_B	ANCIENT	Thái Cổ Chiến Thiên	Ancient chiến đấu: đa stat công kích, Combo/Crit/Bleed/Accuracy nổi bật; hướng tới giao tranh cấp đại năng.	Chiến ý của một thời đại dám nghịch thiên còn lưu trong từng đạo văn. Mặc đủ bộ như nghe tiếng trống chiến từ Thái Cổ.	{}	t
SET_DIVINE_A	DIVINE	Cửu Thiên Thánh Thể	Divine hộ thể: sinh tồn cấp tiên, HP/Armor/Toughness cao nhưng vẫn duy trì Accuracy/Crit/Lifesteal cần thiết.	Thánh thể được Cửu Thiên thanh khí tôi luyện, thân như pháp tắc, huyết như linh hà.	{}	t
SET_DIVINE_B	DIVINE	Thiên Đạo Vấn Kiếm	Divine công kích: Accuracy/Crit/Combo/Bleed/Evasion hội tụ, dành cho build lấy kỹ năng và nhịp ra đòn làm trọng.	Một kiếm hỏi trời: đạo ở đâu, địch ở đâu. Nếu Thiên Đạo không đáp, người cầm kiếm tự viết câu trả lời.	{}	t
SET_RELIC_A	RELIC	Vạn Cổ Bất Hủ	Relic sinh tồn: cấu trúc phòng thủ toàn diện, tượng trưng cho vật phẩm vượt qua nhiều kỷ nguyên mà không mục nát.	Qua vạn cổ vẫn không hủy, qua đại kiếp vẫn còn tên. Mỗi mảnh là chứng tích của một nền văn minh đã biến mất.	{}	t
SET_RELIC_B	RELIC	Luân Hồi Táng Tiên	Relic sát thương/sustain: Bleed, Combo, Crit, Accuracy và Lifesteal gắn với hình tượng luân hồi và đoạt mệnh.	Tương truyền đây là lễ khí của kẻ từng chôn tiên trong một vòng luân hồi đã bị xóa khỏi thiên thư.	{}	t
SET_GOD_A	GOD	Hỗn Độn Vô Cực	God-tier hộ đạo toàn diện: HP/Armor/Toughness làm gốc nhưng các mảnh hỗ trợ công kích đủ mạnh để không có điểm chết rõ rệt.	Trước khi trời đất phân khai chỉ có Hỗn Độn. Vô Cực không đầu không cuối, cũng không có nơi để ngoại lực phá vào.	{}	t
SET_GOD_B	GOD	Đại Đạo Táng Thiên	God-tier chiến đấu: Combo/Crit/Bleed/Accuracy/Evasion và sustain hợp thành build áp đảo cuối game.	Không phải thần binh thuận theo Thiên Đạo, mà là đạo khí từng muốn mai táng chính bầu trời. Chỉ tên của nó đã là một lời nghịch thiên.	{}	t
\.


--
-- TOC entry 5723 (class 0 OID 34167)
-- Dependencies: 288
-- Data for Name: equipment_stat_defs; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.equipment_stat_defs (code, display_name_vi, value_unit, combat_mapping, description, active) FROM stdin;
HP_FLAT	Máu	FLAT	hero.vitality / HP pool	Tăng health pool; seed dùng giá trị flat.	t
ARMOR_FLAT	Giáp	FLAT	hero.armor	Mitigation rating cho PHYSICAL.	t
TOUGHNESS_RATING	Toughness	RATING	combat anti-burst rating	Giảm phần bonus damage của critical hit qua curve; không thay Crit Resist.	t
EVASION_RATING	Né	RATING	combat dodge/evasion rating	Tạo Dodge Chance sau khi trừ Accuracy Rating của attacker.	t
ACCURACY_RATING	Accuracy	RATING	combat anti-evasion rating	Chỉ triệt tiêu Evasion; không cho hit chance vượt 100%.	t
CRIT_RATING	Crit	RATING	hero.crit_rating	Chuyển thành Crit Chance theo rating curve/cap của CombatProfile.	t
COMBO_RATING	Combo	RATING	combat combo proc rating	Chuyển thành cơ hội thêm một combo strike; default cap 1 extra hit/origin action và không recursive.	t
BLEED_RATING	Bleed	RATING	BLEED-tag potency/specialization	Tăng hiệu quả Bleed qua config; không tạo multiplier tùy ý.	t
DAMAGE_BONUS_PCT	Damage	PERCENT	Damage Bucket A — General	General Damage additive trong bucket A; percent stored as percentage points in item JSON seed.	t
LIFESTEAL_PCT	Lifesteal	PERCENT	post-protection eligible damage -> healing	Hồi máu theo eligible damage đã gây; chịu cap/effectiveness của CombatProfile.	t
\.


--
-- TOC entry 5728 (class 0 OID 34241)
-- Dependencies: 293
-- Data for Name: inventory_stacks; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.inventory_stacks (player_id, item_code, binding, quantity, version, updated_at) FROM stdin;
\.


--
-- TOC entry 5722 (class 0 OID 34145)
-- Dependencies: 287
-- Data for Name: item_defs; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.item_defs (id, code, config_version_id, item_type, family_code, display_name_vi, image_asset_key, equipment_slot, rarity, stackable, max_stack, bind_rule, transferable, tags, base_stats, base_effects, salvage_rule, affix_combo_code, set_code, set_name) FROM stdin;
f4bcc651-16b8-4cf7-a767-1e1a8fff2077	EQ_HELM_COMMON_SAMPLE	1	EQUIPMENT	HELM	Mũ Lữ Khách	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 419, "EVASION_RATING": 29}	[]	{}	\N	\N	\N
85965c05-64fa-4263-9318-e63c429e3a57	EQ_HELM_UNCOMMON_SAMPLE	1	EQUIPMENT	HELM	Mũ Thiết Vệ	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 545, "ARMOR_FLAT": 43}	[]	{}	\N	\N	\N
078c3a92-a951-46c6-a5c0-c6c641b6add7	EQ_HELM_RARE_SAMPLE	1	EQUIPMENT	HELM	Mũ Thạch Tâm	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 696, "TOUGHNESS_RATING": 54}	[]	{}	\N	\N	\N
6d92f6ea-0630-4db2-bbc0-508ba0e13bf2	EQ_HELM_EPIC_SAMPLE	1	EQUIPMENT	HELM	Mũ Huyết Giáp	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 472, "ARMOR_FLAT": 38, "CRIT_RATING": 30, "LIFESTEAL_PCT": 2.1}	[]	{}	\N	\N	\N
1eb5ee43-1f80-472a-8fb2-22a5127bc937	EQ_HELM_LEGENDARY_SAMPLE	1	EQUIPMENT	HELM	Mũ Thiên Nhãn	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 478, "CRIT_RATING": 30, "COMBO_RATING": 27, "ACCURACY_RATING": 33, "TOUGHNESS_RATING": 37}	[{"code": "FOCUS_AFTER_DODGE", "description": "FOCUS_AFTER_DODGE: Né thành công tăng Accuracy tạm thời; cap 1 stack."}]	{}	\N	\N	\N
a2d73af4-b011-4968-92ce-e79600c43602	EQ_CHEST_COMMON_SAMPLE	1	EQUIPMENT	CHEST	Giáp Lính Canh	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 400, "ARMOR_FLAT": 35}	[]	{}	\N	\N	\N
17b98751-8f67-479f-ae29-fc78800a7d41	EQ_CHEST_UNCOMMON_SAMPLE	1	EQUIPMENT	CHEST	Giáp Cương Thiết	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 46, "TOUGHNESS_RATING": 41}	[]	{}	\N	\N	\N
05899811-77be-4a04-8d49-5cfda942faa0	EQ_CHEST_RARE_SAMPLE	1	EQUIPMENT	CHEST	Giáp Huyết Tâm	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 359, "ARMOR_FLAT": 31, "CRIT_RATING": 22, "LIFESTEAL_PCT": 1.6}	[]	{}	\N	\N	\N
24980f47-747b-4442-a438-a56adeba03a6	EQ_CHEST_EPIC_SAMPLE	1	EQUIPMENT	CHEST	Giáp Chiến Thuật	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 33, "CRIT_RATING": 23, "COMBO_RATING": 21, "ACCURACY_RATING": 25, "TOUGHNESS_RATING": 30}	[]	{}	\N	\N	\N
7af8ec8c-0e1c-44cd-b3ca-ea22fd9d459a	EQ_CHEST_LEGENDARY_SAMPLE	1	EQUIPMENT	CHEST	Giáp Bất Diệt	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 472, "ARMOR_FLAT": 41, "CRIT_RATING": 29, "LIFESTEAL_PCT": 2.1, "TOUGHNESS_RATING": 37}	[{"code": "LAST_STAND_WARD", "description": "LAST_STAND_WARD: Khi HP xuống dưới ngưỡng, nhận Barrier nhỏ; cooldown theo combat profile."}]	{}	\N	\N	\N
3bc31360-70ec-44fa-9b45-6738420c67be	EQ_SHOULDER_COMMON_SAMPLE	1	EQUIPMENT	SHOULDER	Vai Hộ Mệnh	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 377, "TOUGHNESS_RATING": 34}	[]	{}	\N	\N	\N
7cb906a7-401d-48f4-a4fe-dd58731a56ce	EQ_SHOULDER_UNCOMMON_SAMPLE	1	EQUIPMENT	SHOULDER	Vai Thiết Bích	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 44, "TOUGHNESS_RATING": 44}	[]	{}	\N	\N	\N
5e03a4bc-d909-4392-aaf5-7a5b1439c979	EQ_SHOULDER_RARE_SAMPLE	1	EQUIPMENT	SHOULDER	Vai Ảnh Bộ	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,SAMPLE_BALANCE}	{"EVASION_RATING": 48, "TOUGHNESS_RATING": 58}	[]	{}	\N	\N	\N
b8a82304-0922-485f-a343-e7175732717f	EQ_SHOULDER_EPIC_SAMPLE	1	EQUIPMENT	SHOULDER	Vai Chuẩn Kích	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 39, "CRIT_RATING": 29, "ACCURACY_RATING": 32, "TOUGHNESS_RATING": 38}	[]	{}	\N	\N	\N
de1acee9-9aed-4bde-8ee5-cb8d45e4bb1d	EQ_SHOULDER_LEGENDARY_SAMPLE	1	EQUIPMENT	SHOULDER	Vai Huyết Ấn	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 438, "BLEED_RATING": 30, "COMBO_RATING": 27, "LIFESTEAL_PCT": 2.2, "TOUGHNESS_RATING": 40}	[{"code": "BLEEDING_RESOLVE", "description": "BLEEDING_RESOLVE: Khi gây Bleed, nhận Toughness ngắn hạn; cap theo round."}]	{}	\N	\N	\N
640be4df-fd2d-4ce1-a26d-1074220b4079	EQ_AMULET_COMMON_SAMPLE	1	EQUIPMENT	AMULET	Dây Chuyền Thiết Nhãn	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 33, "ACCURACY_RATING": 32}	[]	{}	\N	\N	\N
98fb6dc9-c181-4e18-aa41-1ec6db9372df	EQ_AMULET_UNCOMMON_SAMPLE	1	EQUIPMENT	AMULET	Dây Chuyền Sinh Mệnh	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 491, "ACCURACY_RATING": 41}	[]	{}	\N	\N	\N
582588c1-08f9-4eb2-ac32-77c26699ae2a	EQ_AMULET_RARE_SAMPLE	1	EQUIPMENT	AMULET	Dây Chuyền Chiến Ý	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,SAMPLE_BALANCE}	{"COMBO_RATING": 27, "ACCURACY_RATING": 36, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	\N	\N	\N
abd42a8a-40ab-45e1-9a94-4a41e71147bb	EQ_AMULET_EPIC_SAMPLE	1	EQUIPMENT	AMULET	Dây Chuyền Ảnh Sinh	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 427, "LIFESTEAL_PCT": 2.1, "EVASION_RATING": 32, "ACCURACY_RATING": 36}	[]	{}	\N	\N	\N
453e62d8-c5a5-4b5f-8f6b-0e56a56b629a	EQ_AMULET_LEGENDARY_SAMPLE	1	EQUIPMENT	AMULET	Dây Chuyền Huyết Chuẩn	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 38, "CRIT_RATING": 30, "BLEED_RATING": 30, "COMBO_RATING": 27, "ACCURACY_RATING": 37}	[{"code": "MARKED_CHAIN", "description": "MARKED_CHAIN: Crit lên mục tiêu đang Bleeding tăng Combo chance cho lần đánh kế tiếp."}]	{}	\N	\N	\N
dea317b1-b632-4ae2-876f-0b513fdf2bc3	EQ_BOOTS_COMMON_SAMPLE	1	EQUIPMENT	BOOTS	Giày Truy Ảnh	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,SAMPLE_BALANCE}	{"EVASION_RATING": 31, "ACCURACY_RATING": 29}	[]	{}	\N	\N	\N
f36d269e-7521-465a-859a-390a3d711ff3	EQ_BOOTS_UNCOMMON_SAMPLE	1	EQUIPMENT	BOOTS	Giày Liên Bộ	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,SAMPLE_BALANCE}	{"COMBO_RATING": 30, "EVASION_RATING": 42}	[]	{}	\N	\N	\N
51d52ee8-83e9-4eb3-a42d-bc5844430329	EQ_BOOTS_RARE_SAMPLE	1	EQUIPMENT	BOOTS	Giày Sinh Phong	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 633, "EVASION_RATING": 55}	[]	{}	\N	\N	\N
48a9ff48-28ca-43c6-99be-1e10f01676c4	EQ_BOOTS_EPIC_SAMPLE	1	EQUIPMENT	BOOTS	Giày Chiến Bộ	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 37, "COMBO_RATING": 26, "EVASION_RATING": 36, "ACCURACY_RATING": 33}	[]	{}	\N	\N	\N
089660b4-27b4-499f-9ba8-c439f99589ad	EQ_BOOTS_LEGENDARY_SAMPLE	1	EQUIPMENT	BOOTS	Giày Vô Ảnh	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,SAMPLE_BALANCE}	{"CRIT_RATING": 30, "LIFESTEAL_PCT": 2.2, "EVASION_RATING": 37, "ACCURACY_RATING": 34, "TOUGHNESS_RATING": 35}	[{"code": "PHANTOM_STEP", "description": "PHANTOM_STEP: Né thành công giảm nhẹ cooldown của kỹ năng kế tiếp; không trigger lặp vô hạn."}]	{}	\N	\N	\N
3b3fdc7f-9904-454f-9134-59c7818338da	EQ_RING_COMMON_SAMPLE	1	EQUIPMENT	RING	Nhẫn Huyết Kích	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 372, "CRIT_RATING": 29}	[]	{}	\N	\N	\N
e25666a7-7b79-4b37-8491-dae7a16d8d40	EQ_RING_UNCOMMON_SAMPLE	1	EQUIPMENT	RING	Nhẫn Thiết Kích	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 42, "CRIT_RATING": 38}	[]	{}	\N	\N	\N
8b2aa272-8ae7-438e-a482-de3a9e8a660f	EQ_RING_RARE_SAMPLE	1	EQUIPMENT	RING	Nhẫn Liên Sát	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,SAMPLE_BALANCE}	{"CRIT_RATING": 34, "COMBO_RATING": 27, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	\N	\N	\N
88dfaa0b-102e-423e-8712-116c8b3a778b	EQ_RING_EPIC_SAMPLE	1	EQUIPMENT	RING	Nhẫn Ảnh Huyết	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 424, "CRIT_RATING": 34, "LIFESTEAL_PCT": 2.1, "EVASION_RATING": 32}	[]	{}	\N	\N	\N
75ff30d6-d984-447e-9c5b-20eedb3b3fbf	EQ_RING_LEGENDARY_SAMPLE	1	EQUIPMENT	RING	Nhẫn Huyết Chuẩn	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,SAMPLE_BALANCE}	{"ARMOR_FLAT": 38, "CRIT_RATING": 34, "BLEED_RATING": 30, "COMBO_RATING": 27, "ACCURACY_RATING": 33}	[{"code": "CRIMSON_LINK", "description": "CRIMSON_LINK: Combo lên mục tiêu Bleeding có cơ hội gia hạn Bleed; cap 1 lần/round."}]	{}	\N	\N	\N
91acd04b-d1ab-4958-b5ca-3a6eb6313850	EQ_OFF_HAND_COMMON_SAMPLE	1	EQUIPMENT	OFF_HAND	Phù Liên Kích	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,SAMPLE_BALANCE}	{"COMBO_RATING": 24, "DAMAGE_BONUS_PCT": 4.2}	[]	{}	\N	\N	\N
7bf7a77f-3a79-49d9-b24c-c2aee2abad5d	EQ_OFF_HAND_UNCOMMON_SAMPLE	1	EQUIPMENT	OFF_HAND	Phù Chuẩn Kích	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,SAMPLE_BALANCE}	{"ACCURACY_RATING": 36, "DAMAGE_BONUS_PCT": 5.6}	[]	{}	\N	\N	\N
63cb4d41-e3fb-470a-bec6-8cd732d59af3	EQ_OFF_HAND_RARE_SAMPLE	1	EQUIPMENT	OFF_HAND	Phù Huyết Thương	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,SAMPLE_BALANCE}	{"BLEED_RATING": 43, "DAMAGE_BONUS_PCT": 7.4}	[]	{}	\N	\N	\N
57610a95-be21-486a-9a3f-1b1b41077f90	EQ_OFF_HAND_EPIC_SAMPLE	1	EQUIPMENT	OFF_HAND	Phù Hấp Huyết	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,SAMPLE_BALANCE}	{"CRIT_RATING": 29, "LIFESTEAL_PCT": 2.1, "DAMAGE_BONUS_PCT": 5.0, "TOUGHNESS_RATING": 34}	[]	{}	\N	\N	\N
d122606e-bc36-49dd-9152-aa222c49378e	EQ_OFF_HAND_LEGENDARY_SAMPLE	1	EQUIPMENT	OFF_HAND	Phù Ngũ Sát	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 428, "BLEED_RATING": 29, "COMBO_RATING": 28, "EVASION_RATING": 32, "DAMAGE_BONUS_PCT": 5.1}	[{"code": "EXECUTION_ECHO", "description": "EXECUTION_ECHO: Combo strike lên mục tiêu Bleeding tạo một echo hit nhỏ; không tự combo tiếp."}]	{}	\N	\N	\N
e9922ef9-4518-4eba-b295-d64b29adb638	EQ_WEAPON_COMMON_SAMPLE	1	EQUIPMENT	WEAPON	Kiếm Liên Kích	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,SAMPLE_BALANCE}	{"COMBO_RATING": 22, "DAMAGE_BONUS_PCT": 4.4}	[]	{}	\N	\N	\N
0b5bdb9a-0ce9-40fc-90c3-182f4b0cf1c9	EQ_WEAPON_UNCOMMON_SAMPLE	1	EQUIPMENT	WEAPON	Kiếm Chuẩn Kích	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,SAMPLE_BALANCE}	{"ACCURACY_RATING": 35, "DAMAGE_BONUS_PCT": 5.8}	[]	{}	\N	\N	\N
18e63d06-2713-48d1-a739-8b15cd19ea17	EQ_WEAPON_RARE_SAMPLE	1	EQUIPMENT	WEAPON	Kiếm Huyết Thương	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,SAMPLE_BALANCE}	{"BLEED_RATING": 43, "DAMAGE_BONUS_PCT": 7.4}	[]	{}	\N	\N	\N
38646b13-a54a-4526-83ed-bb4e690b679f	EQ_WEAPON_EPIC_SAMPLE	1	EQUIPMENT	WEAPON	Kiếm Hấp Huyết	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,SAMPLE_BALANCE}	{"CRIT_RATING": 28, "LIFESTEAL_PCT": 2.1, "DAMAGE_BONUS_PCT": 5.2, "TOUGHNESS_RATING": 34}	[]	{}	\N	\N	\N
235d7de7-7333-4fb8-bf06-20841fe513b9	EQ_WEAPON_LEGENDARY_SAMPLE	1	EQUIPMENT	WEAPON	Kiếm Ngũ Sát	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 423, "BLEED_RATING": 31, "COMBO_RATING": 26, "EVASION_RATING": 32, "DAMAGE_BONUS_PCT": 5.3}	[{"code": "SOULREAPER_EDGE", "description": "SOULREAPER_EDGE: Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; cap 1 proc/round."}]	{}	\N	\N	\N
c11b2c27-bfe5-4b00-88b1-23d0d271c60d	EQ_PET_COMMON_SAMPLE	1	EQUIPMENT	PET	Linh Thú Hộ Giáp	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 400, "ARMOR_FLAT": 35}	[]	{}	\N	\N	\N
a441fbfa-5247-4383-8bb1-4abd358705e4	EQ_PET_UNCOMMON_SAMPLE	1	EQUIPMENT	PET	Linh Thú Né Tránh	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,SAMPLE_BALANCE}	{"EVASION_RATING": 39, "ACCURACY_RATING": 39}	[]	{}	\N	\N	\N
27543942-9455-4857-8cc4-025f6ad19931	EQ_PET_RARE_SAMPLE	1	EQUIPMENT	PET	Linh Thú Liên Kích	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,SAMPLE_BALANCE}	{"COMBO_RATING": 42, "ACCURACY_RATING": 51}	[]	{}	\N	\N	\N
7e0ead6c-5ae5-4667-a180-ba9afa2e3f08	EQ_PET_EPIC_SAMPLE	1	EQUIPMENT	PET	Linh Thú Bạo Kích	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,SAMPLE_BALANCE}	{"CRIT_RATING": 61, "COMBO_RATING": 55}	[]	{}	\N	\N	\N
dad6ef7e-b7cf-4d7b-afa6-c996d564eebd	EQ_PET_LEGENDARY_SAMPLE	1	EQUIPMENT	PET	Linh Thú Chiến Huyết	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,SAMPLE_BALANCE}	{"HP_FLAT": 1120, "DAMAGE_BONUS_PCT": 11.2}	[{"code": "GUARDIAN_BOND", "description": "GUARDIAN_BOND: Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	\N	\N	\N
c136f842-d0b6-4857-beb6-e357a1d1b277	EQ_HELM_C01_COMMON	1	EQUIPMENT	HELM	Ô Kim Huyết Ảnh Linh Khôi	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,COMMON,LOOSE_ITEM}	{"HP_FLAT": 400, "EVASION_RATING": 30}	[]	{}	HELM_COMBO_01	\N	\N
4fefb69a-0a3c-4488-884f-b63286916a80	EQ_HELM_C01_UNCOMMON	1	EQUIPMENT	HELM	Linh Mộc Huyết Ảnh Linh Khôi	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 520, "EVASION_RATING": 39}	[]	{}	HELM_COMBO_01	\N	\N
206d8b94-2ecf-4b7c-bbe3-e1a5d9350387	EQ_HELM_C01_RARE	1	EQUIPMENT	HELM	Xích Viêm Huyết Ảnh Linh Khôi	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,RARE,LOOSE_ITEM}	{"HP_FLAT": 680, "EVASION_RATING": 51}	[]	{}	HELM_COMBO_01	\N	\N
f912c25d-94d3-49ec-986c-004f71ce4362	EQ_HELM_C01_EPIC	1	EQUIPMENT	HELM	Liệt Dương Huyết Ảnh Linh Khôi	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,EPIC,LOOSE_ITEM}	{"HP_FLAT": 880, "EVASION_RATING": 66}	[]	{}	HELM_COMBO_01	\N	\N
3b2de482-84b7-4646-89e1-b453f9f898e9	EQ_HELM_C01_LEGENDARY	1	EQUIPMENT	HELM	Kỳ Lân Huyết Ảnh Linh Khôi · Chi Tâm	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 1120, "EVASION_RATING": 84}	[{"code": "LEGENDARY_HELM_C01", "description": "Né thành công tăng Accuracy cho action kế tiếp; tối đa 1 lần/round."}]	{}	HELM_COMBO_01	\N	\N
0c723d05-f644-47de-9809-0b57bdcbf830	EQ_HELM_C01_MYTHIC	1	EQUIPMENT	HELM	Vô Cực Huyết Ảnh Linh Khôi · Phệ Hồn	\N	HELM	MYTHIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 1400, "EVASION_RATING": 105}	[]	{}	HELM_COMBO_01	\N	\N
8c592089-230c-49be-acf8-c3ff29091393	EQ_HELM_C01_ANCIENT	1	EQUIPMENT	HELM	Khai Thiên Huyết Ảnh Linh Khôi · Vấn Đạo	\N	HELM	ANCIENT	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 1720, "EVASION_RATING": 129}	[]	{}	HELM_COMBO_01	\N	\N
e80ed2d7-a964-4c5d-9ff3-33cc66e73cc9	EQ_HELM_C01_DIVINE	1	EQUIPMENT	HELM	Thần Tiêu Huyết Ảnh Linh Khôi · Trấn Thiên	\N	HELM	DIVINE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 2080, "EVASION_RATING": 156}	[]	{}	HELM_COMBO_01	\N	\N
cb8b4334-91e2-456f-a22c-6dffc9d81175	EQ_HELM_C01_RELIC	1	EQUIPMENT	HELM	Bất Hủ Huyết Ảnh Linh Khôi · Vạn Kiếp	\N	HELM	RELIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,RELIC,LOOSE_ITEM}	{"HP_FLAT": 2480, "EVASION_RATING": 186}	[]	{}	HELM_COMBO_01	\N	\N
c8a4d5f4-9fc8-4ceb-9930-d8aa0fb98276	EQ_HELM_C01_GOD	1	EQUIPMENT	HELM	Chư Thiên Huyết Ảnh Linh Khôi · Táng Thiên	\N	HELM	GOD	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_01,GOD,LOOSE_ITEM}	{"HP_FLAT": 2920, "EVASION_RATING": 219}	[]	{}	HELM_COMBO_01	\N	\N
4b25c273-b5c9-495c-a19b-1bc4e7071d5e	EQ_HELM_C02_COMMON	1	EQUIPMENT	HELM	Hắc Thiết Hộ Thể · Đạo Quan	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "ARMOR_FLAT": 38}	[]	{}	HELM_COMBO_02	SET_COMMON_A	Hắc Thiết Hộ Thể
afbd3584-4871-4e41-bbb2-e9ffd2250ce7	EQ_HELM_C02_UNCOMMON	1	EQUIPMENT	HELM	Linh Cốt Thanh Tâm · Đạo Quan	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "ARMOR_FLAT": 49}	[]	{}	HELM_COMBO_02	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
fd69ce96-8b04-41de-b2e6-512fc442b8b2	EQ_HELM_C02_RARE	1	EQUIPMENT	HELM	Huyền Giáp Bất Động · Đạo Quan	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "ARMOR_FLAT": 64}	[]	{}	HELM_COMBO_02	SET_RARE_A	Huyền Giáp Bất Động
00ffd865-af70-4f3a-968c-b89abd9798db	EQ_HELM_C02_EPIC	1	EQUIPMENT	HELM	Cửu U Huyền Minh · Đạo Quan	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "ARMOR_FLAT": 83}	[]	{}	HELM_COMBO_02	SET_EPIC_A	Cửu U Huyền Minh
0db8e01f-8265-48b7-b074-0d00b92324c6	EQ_HELM_C02_LEGENDARY	1	EQUIPMENT	HELM	Chân Long Trấn Nhạc · Đạo Quan	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "ARMOR_FLAT": 105}	[{"code": "LEGENDARY_HELM_C02", "description": "Né thành công tăng Accuracy cho action kế tiếp; tối đa 1 lần/round."}]	{}	HELM_COMBO_02	SET_LEGENDARY_A	Chân Long Trấn Nhạc
2d446b95-657e-4e82-9874-edfba6d41144	EQ_HELM_C02_MYTHIC	1	EQUIPMENT	HELM	Thái Hư Vô Tướng · Đạo Quan	\N	HELM	MYTHIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "ARMOR_FLAT": 131}	[]	{}	HELM_COMBO_02	SET_MYTHIC_A	Thái Hư Vô Tướng
8672456c-072a-4524-9a45-fdf0d9d8a7aa	EQ_HELM_C02_ANCIENT	1	EQUIPMENT	HELM	Hồng Hoang Bất Diệt · Đạo Quan	\N	HELM	ANCIENT	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "ARMOR_FLAT": 161}	[]	{}	HELM_COMBO_02	SET_ANCIENT_A	Hồng Hoang Bất Diệt
105aba28-7c79-4c66-83fd-0139d2bb69df	EQ_HELM_C02_DIVINE	1	EQUIPMENT	HELM	Cửu Thiên Thánh Thể · Đạo Quan	\N	HELM	DIVINE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "ARMOR_FLAT": 195}	[]	{}	HELM_COMBO_02	SET_DIVINE_A	Cửu Thiên Thánh Thể
1d80fe3c-e7f1-4e25-a79a-6d8e83b94cf9	EQ_HELM_C02_RELIC	1	EQUIPMENT	HELM	Vạn Cổ Bất Hủ · Đạo Quan	\N	HELM	RELIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "ARMOR_FLAT": 233}	[]	{}	HELM_COMBO_02	SET_RELIC_A	Vạn Cổ Bất Hủ
77feda09-7133-43d7-9640-06dd1082fab5	EQ_HELM_C02_GOD	1	EQUIPMENT	HELM	Hỗn Độn Vô Cực · Đạo Quan	\N	HELM	GOD	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_02,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "ARMOR_FLAT": 274}	[]	{}	HELM_COMBO_02	SET_GOD_A	Hỗn Độn Vô Cực
1e9e492d-c8d9-403e-adf6-058f9df27f94	EQ_HELM_C03_COMMON	1	EQUIPMENT	HELM	Hắc Thiết Bất Động Đạo Quan	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,COMMON,LOOSE_ITEM}	{"HP_FLAT": 400, "TOUGHNESS_RATING": 32}	[]	{}	HELM_COMBO_03	\N	\N
3b560a72-2aac-4cf0-acd3-2540b44afe6d	EQ_HELM_C03_UNCOMMON	1	EQUIPMENT	HELM	Thanh Phong Bất Động Đạo Quan	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 520, "TOUGHNESS_RATING": 41}	[]	{}	HELM_COMBO_03	\N	\N
b38dc28d-02aa-4a9a-bbe7-e7a70f59f719	EQ_HELM_C03_RARE	1	EQUIPMENT	HELM	Huyết Sát Bất Động Đạo Quan	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,RARE,LOOSE_ITEM}	{"HP_FLAT": 680, "TOUGHNESS_RATING": 54}	[]	{}	HELM_COMBO_03	\N	\N
69dcd23b-7799-46f7-9b4e-1b6592f031e2	EQ_HELM_C03_EPIC	1	EQUIPMENT	HELM	Thiên Lôi Bất Động Đạo Quan	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,EPIC,LOOSE_ITEM}	{"HP_FLAT": 880, "TOUGHNESS_RATING": 69}	[]	{}	HELM_COMBO_03	\N	\N
b05f1c03-be09-4aaa-9e5c-1d3689eb2e00	EQ_HELM_C03_LEGENDARY	1	EQUIPMENT	HELM	Chân Long Bất Động Đạo Quan · Chi Nộ	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 1120, "TOUGHNESS_RATING": 88}	[{"code": "LEGENDARY_HELM_C03", "description": "Né thành công tăng Accuracy cho action kế tiếp; tối đa 1 lần/round."}]	{}	HELM_COMBO_03	\N	\N
5377b547-7330-442c-929e-3a7609fc1efb	EQ_HELM_C03_MYTHIC	1	EQUIPMENT	HELM	Thái Hư Bất Động Đạo Quan · Vô Tướng	\N	HELM	MYTHIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 1400, "TOUGHNESS_RATING": 110}	[]	{}	HELM_COMBO_03	\N	\N
724b0b01-8b5b-4844-9fc6-dea3dfb30175	EQ_HELM_C03_ANCIENT	1	EQUIPMENT	HELM	Hồng Hoang Bất Động Đạo Quan · Hoang Cổ	\N	HELM	ANCIENT	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 1720, "TOUGHNESS_RATING": 135}	[]	{}	HELM_COMBO_03	\N	\N
35e2083c-10d0-4c5b-83be-e77fcfa71756	EQ_HELM_C03_DIVINE	1	EQUIPMENT	HELM	Cửu Thiên Bất Động Đạo Quan · Phong Thần	\N	HELM	DIVINE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 2080, "TOUGHNESS_RATING": 164}	[]	{}	HELM_COMBO_03	\N	\N
956a1ec1-bf20-44d7-a319-2e9e0399ad8b	EQ_HELM_C03_RELIC	1	EQUIPMENT	HELM	Vạn Cổ Bất Động Đạo Quan · Kỷ Nguyên	\N	HELM	RELIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,RELIC,LOOSE_ITEM}	{"HP_FLAT": 2480, "TOUGHNESS_RATING": 195}	[]	{}	HELM_COMBO_03	\N	\N
8a335991-d357-4668-a6fa-40d855a64a75	EQ_HELM_C03_GOD	1	EQUIPMENT	HELM	Hỗn Độn Bất Động Đạo Quan · Vô Cực	\N	HELM	GOD	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_03,GOD,LOOSE_ITEM}	{"HP_FLAT": 2920, "TOUGHNESS_RATING": 230}	[]	{}	HELM_COMBO_03	\N	\N
c1d3c2f8-5054-4760-9d6b-993082ea466e	EQ_HELM_C04_COMMON	1	EQUIPMENT	HELM	Xích Đồng Huyết Hộ Thiên Quan	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,COMMON,LOOSE_ITEM}	{"HP_FLAT": 200, "ARMOR_FLAT": 19, "CRIT_RATING": 14, "LIFESTEAL_PCT": 0.9}	[]	{}	HELM_COMBO_04	\N	\N
be505345-70b1-4fec-9430-b6710dcffeaf	EQ_HELM_C04_UNCOMMON	1	EQUIPMENT	HELM	Tử Trúc Huyết Hộ Thiên Quan	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 260, "ARMOR_FLAT": 24, "CRIT_RATING": 18, "LIFESTEAL_PCT": 1.2}	[]	{}	HELM_COMBO_04	\N	\N
1fe8dcfc-5226-4bc3-af4e-0465757718f4	EQ_HELM_C04_RARE	1	EQUIPMENT	HELM	Huyền Băng Huyết Hộ Thiên Quan	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,RARE,LOOSE_ITEM}	{"HP_FLAT": 340, "ARMOR_FLAT": 32, "CRIT_RATING": 24, "LIFESTEAL_PCT": 1.6}	[]	{}	HELM_COMBO_04	\N	\N
dee414b3-9f6a-4075-862e-1e6fa9b42cb1	EQ_HELM_C04_EPIC	1	EQUIPMENT	HELM	Hàn Nguyệt Huyết Hộ Thiên Quan	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,EPIC,LOOSE_ITEM}	{"HP_FLAT": 440, "ARMOR_FLAT": 41, "CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1}	[]	{}	HELM_COMBO_04	\N	\N
b4e9a5ed-9e03-41d6-87e7-7c3fcfdef920	EQ_HELM_C04_LEGENDARY	1	EQUIPMENT	HELM	Đế Tâm Huyết Hộ Thiên Quan · Chi Ảnh	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 560, "ARMOR_FLAT": 53, "CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6}	[{"code": "LEGENDARY_HELM_C04", "description": "Né thành công tăng Accuracy cho action kế tiếp; tối đa 1 lần/round."}]	{}	HELM_COMBO_04	\N	\N
c2eb6035-6026-4ee5-b1bb-9ee456ea5041	EQ_HELM_C04_MYTHIC	1	EQUIPMENT	HELM	Tịch Diệt Huyết Hộ Thiên Quan · Tịch Diệt	\N	HELM	MYTHIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 700, "ARMOR_FLAT": 66, "CRIT_RATING": 49, "LIFESTEAL_PCT": 3.3}	[]	{}	HELM_COMBO_04	\N	\N
1370e959-552e-4d59-bc24-c75c88e9385f	EQ_HELM_C04_ANCIENT	1	EQUIPMENT	HELM	Thái Sơ Huyết Hộ Thiên Quan · Khai Thiên	\N	HELM	ANCIENT	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 860, "ARMOR_FLAT": 81, "CRIT_RATING": 60, "LIFESTEAL_PCT": 4.0}	[]	{}	HELM_COMBO_04	\N	\N
3630308a-4038-48ce-8d0e-3732b2a4510c	EQ_HELM_C04_DIVINE	1	EQUIPMENT	HELM	Dao Trì Huyết Hộ Thiên Quan · Vấn Thiên	\N	HELM	DIVINE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 1040, "ARMOR_FLAT": 98, "CRIT_RATING": 73, "LIFESTEAL_PCT": 4.9}	[]	{}	HELM_COMBO_04	\N	\N
c28b959e-cb84-4f46-a485-46c97d82aad8	EQ_HELM_C04_RELIC	1	EQUIPMENT	HELM	Kỷ Nguyên Huyết Hộ Thiên Quan · Luân Hồi	\N	HELM	RELIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,RELIC,LOOSE_ITEM}	{"HP_FLAT": 1240, "ARMOR_FLAT": 116, "CRIT_RATING": 87, "LIFESTEAL_PCT": 5.8}	[]	{}	HELM_COMBO_04	\N	\N
ba86e30e-a416-4141-aec9-d8e63087773a	EQ_HELM_C04_GOD	1	EQUIPMENT	HELM	Vạn Giới Huyết Hộ Thiên Quan · Khai Giới	\N	HELM	GOD	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_04,GOD,LOOSE_ITEM}	{"HP_FLAT": 1460, "ARMOR_FLAT": 137, "CRIT_RATING": 102, "LIFESTEAL_PCT": 6.8}	[]	{}	HELM_COMBO_04	\N	\N
cc49d246-9508-4212-b967-85edbf8dbf13	EQ_HELM_C05_COMMON	1	EQUIPMENT	HELM	Liệp Phong · Chiến Quan	\N	HELM	COMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,COMMON,SET_PIECE,SET_COMMON_B}	{"HP_FLAT": 160, "CRIT_RATING": 11, "COMBO_RATING": 11, "ACCURACY_RATING": 12, "TOUGHNESS_RATING": 13}	[]	{}	HELM_COMBO_05	SET_COMMON_B	Liệp Phong
48071632-9f19-492b-9048-2fee85b2689d	EQ_HELM_C05_UNCOMMON	1	EQUIPMENT	HELM	Thanh Phong Truy Ảnh · Chiến Quan	\N	HELM	UNCOMMON	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"HP_FLAT": 208, "CRIT_RATING": 15, "COMBO_RATING": 14, "ACCURACY_RATING": 16, "TOUGHNESS_RATING": 16}	[]	{}	HELM_COMBO_05	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
75f3ebf9-27fc-45c8-b13f-097290b1744b	EQ_HELM_C05_RARE	1	EQUIPMENT	HELM	Huyết Sát · Chiến Quan	\N	HELM	RARE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,RARE,SET_PIECE,SET_RARE_B}	{"HP_FLAT": 272, "CRIT_RATING": 19, "COMBO_RATING": 19, "ACCURACY_RATING": 20, "TOUGHNESS_RATING": 21}	[]	{}	HELM_COMBO_05	SET_RARE_B	Huyết Sát
e0ce05de-23ce-4161-8e9b-933638840a39	EQ_HELM_C05_EPIC	1	EQUIPMENT	HELM	Thiên Lôi · Chiến Quan	\N	HELM	EPIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,EPIC,SET_PIECE,SET_EPIC_B}	{"HP_FLAT": 352, "CRIT_RATING": 25, "COMBO_RATING": 24, "ACCURACY_RATING": 26, "TOUGHNESS_RATING": 28}	[]	{}	HELM_COMBO_05	SET_EPIC_B	Thiên Lôi
4b634014-71c9-42f5-8a98-f6b04293761f	EQ_HELM_C05_LEGENDARY	1	EQUIPMENT	HELM	Phượng Hoàng Niết Bàn · Chiến Quan	\N	HELM	LEGENDARY	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"HP_FLAT": 448, "CRIT_RATING": 31, "COMBO_RATING": 31, "ACCURACY_RATING": 34, "TOUGHNESS_RATING": 35}	[{"code": "LEGENDARY_HELM_C05", "description": "Né thành công tăng Accuracy cho action kế tiếp; tối đa 1 lần/round."}]	{}	HELM_COMBO_05	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
247c474b-15bf-44ea-836c-d6dccac37774	EQ_HELM_C05_MYTHIC	1	EQUIPMENT	HELM	Tu La Huyết Ngục · Chiến Quan	\N	HELM	MYTHIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"HP_FLAT": 560, "CRIT_RATING": 39, "COMBO_RATING": 39, "ACCURACY_RATING": 42, "TOUGHNESS_RATING": 44}	[]	{}	HELM_COMBO_05	SET_MYTHIC_B	Tu La Huyết Ngục
11964e32-21ea-4a97-adda-12d9555879ec	EQ_HELM_C05_ANCIENT	1	EQUIPMENT	HELM	Thái Cổ Chiến Thiên · Chiến Quan	\N	HELM	ANCIENT	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"HP_FLAT": 688, "CRIT_RATING": 48, "COMBO_RATING": 47, "ACCURACY_RATING": 52, "TOUGHNESS_RATING": 54}	[]	{}	HELM_COMBO_05	SET_ANCIENT_B	Thái Cổ Chiến Thiên
b9690676-1ad5-442e-86c2-c855363640f7	EQ_HELM_C05_DIVINE	1	EQUIPMENT	HELM	Thiên Đạo Vấn Kiếm · Chiến Quan	\N	HELM	DIVINE	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,DIVINE,SET_PIECE,SET_DIVINE_B}	{"HP_FLAT": 832, "CRIT_RATING": 58, "COMBO_RATING": 57, "ACCURACY_RATING": 62, "TOUGHNESS_RATING": 66}	[]	{}	HELM_COMBO_05	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
35a4bc2a-03b6-4bcc-892d-1d1a0964c120	EQ_HELM_C05_RELIC	1	EQUIPMENT	HELM	Luân Hồi Táng Tiên · Chiến Quan	\N	HELM	RELIC	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,RELIC,SET_PIECE,SET_RELIC_B}	{"HP_FLAT": 992, "CRIT_RATING": 69, "COMBO_RATING": 68, "ACCURACY_RATING": 74, "TOUGHNESS_RATING": 78}	[]	{}	HELM_COMBO_05	SET_RELIC_B	Luân Hồi Táng Tiên
f8a7dfad-9d9f-4aeb-a29c-e8c2c82d5ef2	EQ_HELM_C05_GOD	1	EQUIPMENT	HELM	Đại Đạo Táng Thiên · Chiến Quan	\N	HELM	GOD	f	\N	ACCOUNT	t	{HELM,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,HELM_COMBO_05,GOD,SET_PIECE,SET_GOD_B}	{"HP_FLAT": 1168, "CRIT_RATING": 82, "COMBO_RATING": 80, "ACCURACY_RATING": 88, "TOUGHNESS_RATING": 92}	[]	{}	HELM_COMBO_05	SET_GOD_B	Đại Đạo Táng Thiên
c053a270-efcb-4b28-a825-a3d4b8efb405	EQ_CHEST_C01_COMMON	1	EQUIPMENT	CHEST	Hắc Thiết Hộ Thể · Huyền Khải	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "ARMOR_FLAT": 38}	[]	{}	CHEST_COMBO_01	SET_COMMON_A	Hắc Thiết Hộ Thể
6d2a9df2-81f5-4dd8-82af-b3c78683ba4f	EQ_CHEST_C01_UNCOMMON	1	EQUIPMENT	CHEST	Linh Cốt Thanh Tâm · Huyền Khải	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "ARMOR_FLAT": 49}	[]	{}	CHEST_COMBO_01	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
19a59431-db38-4c0e-a884-53880b8cff0c	EQ_BOOTS_C01_COMMON	1	EQUIPMENT	BOOTS	Thiết Mộc Truy Tinh Vân Ngoa	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,COMMON,LOOSE_ITEM}	{"EVASION_RATING": 30, "ACCURACY_RATING": 30}	[]	{}	BOOTS_COMBO_01	\N	\N
8719e97a-cc82-41a1-b573-3d76d91c9e61	EQ_CHEST_C01_RARE	1	EQUIPMENT	CHEST	Huyền Giáp Bất Động · Huyền Khải	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "ARMOR_FLAT": 64}	[]	{}	CHEST_COMBO_01	SET_RARE_A	Huyền Giáp Bất Động
240e1161-61ef-4f3a-9b6e-ab7d2741b719	EQ_CHEST_C01_EPIC	1	EQUIPMENT	CHEST	Cửu U Huyền Minh · Huyền Khải	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "ARMOR_FLAT": 83}	[]	{}	CHEST_COMBO_01	SET_EPIC_A	Cửu U Huyền Minh
86b88759-6a03-4be9-8469-965666682ef3	EQ_CHEST_C01_LEGENDARY	1	EQUIPMENT	CHEST	Chân Long Trấn Nhạc · Huyền Khải	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "ARMOR_FLAT": 105}	[{"code": "LEGENDARY_CHEST_C01", "description": "Khi HP lần đầu xuống dưới 35%, nhận Barrier tạm thời; có cooldown."}]	{}	CHEST_COMBO_01	SET_LEGENDARY_A	Chân Long Trấn Nhạc
fd743a34-70c7-4446-82f8-e96836bad497	EQ_CHEST_C01_MYTHIC	1	EQUIPMENT	CHEST	Thái Hư Vô Tướng · Huyền Khải	\N	CHEST	MYTHIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "ARMOR_FLAT": 131}	[]	{}	CHEST_COMBO_01	SET_MYTHIC_A	Thái Hư Vô Tướng
5b41a185-3aea-41b2-8816-c99b1d40799b	EQ_CHEST_C01_ANCIENT	1	EQUIPMENT	CHEST	Hồng Hoang Bất Diệt · Huyền Khải	\N	CHEST	ANCIENT	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "ARMOR_FLAT": 161}	[]	{}	CHEST_COMBO_01	SET_ANCIENT_A	Hồng Hoang Bất Diệt
0e34ba81-00bb-49b1-89d9-bb7c91036412	EQ_CHEST_C01_DIVINE	1	EQUIPMENT	CHEST	Cửu Thiên Thánh Thể · Huyền Khải	\N	CHEST	DIVINE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "ARMOR_FLAT": 195}	[]	{}	CHEST_COMBO_01	SET_DIVINE_A	Cửu Thiên Thánh Thể
d7981014-abd2-4e5d-9279-c36080cb5d23	EQ_CHEST_C01_RELIC	1	EQUIPMENT	CHEST	Vạn Cổ Bất Hủ · Huyền Khải	\N	CHEST	RELIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "ARMOR_FLAT": 233}	[]	{}	CHEST_COMBO_01	SET_RELIC_A	Vạn Cổ Bất Hủ
ff99aebc-0b24-4468-bcf5-a51abd565409	EQ_CHEST_C01_GOD	1	EQUIPMENT	CHEST	Hỗn Độn Vô Cực · Huyền Khải	\N	CHEST	GOD	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_01,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "ARMOR_FLAT": 274}	[]	{}	CHEST_COMBO_01	SET_GOD_A	Hỗn Độn Vô Cực
18d7787f-8ba7-46ae-a490-3ddd56f616d5	EQ_CHEST_C02_COMMON	1	EQUIPMENT	CHEST	Ô Kim Trấn Nhạc Huyền Khải	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 38, "TOUGHNESS_RATING": 32}	[]	{}	CHEST_COMBO_02	\N	\N
79c90135-e8d8-45c0-8f1e-a22c98f143d8	EQ_CHEST_C02_UNCOMMON	1	EQUIPMENT	CHEST	Linh Mộc Trấn Nhạc Huyền Khải	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 49, "TOUGHNESS_RATING": 41}	[]	{}	CHEST_COMBO_02	\N	\N
0e1d7dc4-c5cf-4b67-b8e4-43b5fafb91ca	EQ_CHEST_C02_RARE	1	EQUIPMENT	CHEST	Xích Viêm Trấn Nhạc Huyền Khải	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 64, "TOUGHNESS_RATING": 54}	[]	{}	CHEST_COMBO_02	\N	\N
f7feb897-b549-4d33-8c25-16d138c3c01f	EQ_CHEST_C02_EPIC	1	EQUIPMENT	CHEST	Liệt Dương Trấn Nhạc Huyền Khải	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 83, "TOUGHNESS_RATING": 69}	[]	{}	CHEST_COMBO_02	\N	\N
19c60bd5-4a8b-416e-8771-0abe2fec7126	EQ_CHEST_C02_LEGENDARY	1	EQUIPMENT	CHEST	Kỳ Lân Trấn Nhạc Huyền Khải · Chi Mệnh	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 105, "TOUGHNESS_RATING": 88}	[{"code": "LEGENDARY_CHEST_C02", "description": "Khi HP lần đầu xuống dưới 35%, nhận Barrier tạm thời; có cooldown."}]	{}	CHEST_COMBO_02	\N	\N
f2e471fc-dea9-4499-b500-e671993c3be8	EQ_CHEST_C02_MYTHIC	1	EQUIPMENT	CHEST	Vô Cực Trấn Nhạc Huyền Khải · Đoạn Không	\N	CHEST	MYTHIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 131, "TOUGHNESS_RATING": 110}	[]	{}	CHEST_COMBO_02	\N	\N
b6cdc8d9-ca26-460a-b613-59e1a9d9d095	EQ_CHEST_C02_ANCIENT	1	EQUIPMENT	CHEST	Khai Thiên Trấn Nhạc Huyền Khải · Trấn Thế	\N	CHEST	ANCIENT	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 161, "TOUGHNESS_RATING": 135}	[]	{}	CHEST_COMBO_02	\N	\N
b8e8b695-5e66-45e2-ac04-d170520517bf	EQ_CHEST_C02_DIVINE	1	EQUIPMENT	CHEST	Thần Tiêu Trấn Nhạc Huyền Khải · Ngự Đạo	\N	CHEST	DIVINE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 195, "TOUGHNESS_RATING": 164}	[]	{}	CHEST_COMBO_02	\N	\N
107a952d-ea5a-4da3-a102-cb22dfae6c5b	EQ_CHEST_C02_RELIC	1	EQUIPMENT	CHEST	Bất Hủ Trấn Nhạc Huyền Khải · Bất Hủ	\N	CHEST	RELIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 233, "TOUGHNESS_RATING": 195}	[]	{}	CHEST_COMBO_02	\N	\N
54ed2c36-d7b9-4ae1-93e9-59b71d157957	EQ_CHEST_C02_GOD	1	EQUIPMENT	CHEST	Chư Thiên Trấn Nhạc Huyền Khải · Quy Nhất	\N	CHEST	GOD	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_02,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 274, "TOUGHNESS_RATING": 230}	[]	{}	CHEST_COMBO_02	\N	\N
5eb79a17-5cfd-4200-a54c-c260319e87c5	EQ_CHEST_C03_COMMON	1	EQUIPMENT	CHEST	Liệp Phong · Đạo Y	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,COMMON,SET_PIECE,SET_COMMON_B}	{"ARMOR_FLAT": 15, "CRIT_RATING": 11, "COMBO_RATING": 11, "ACCURACY_RATING": 12, "TOUGHNESS_RATING": 13}	[]	{}	CHEST_COMBO_03	SET_COMMON_B	Liệp Phong
a1990225-d33c-44fb-b664-afc3e21f8f6b	EQ_CHEST_C03_UNCOMMON	1	EQUIPMENT	CHEST	Thanh Phong Truy Ảnh · Đạo Y	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"ARMOR_FLAT": 20, "CRIT_RATING": 15, "COMBO_RATING": 14, "ACCURACY_RATING": 16, "TOUGHNESS_RATING": 16}	[]	{}	CHEST_COMBO_03	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
b18bfcf1-68de-4bc9-be1b-45b3fefa90a5	EQ_CHEST_C03_RARE	1	EQUIPMENT	CHEST	Huyết Sát · Đạo Y	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,RARE,SET_PIECE,SET_RARE_B}	{"ARMOR_FLAT": 26, "CRIT_RATING": 19, "COMBO_RATING": 19, "ACCURACY_RATING": 20, "TOUGHNESS_RATING": 21}	[]	{}	CHEST_COMBO_03	SET_RARE_B	Huyết Sát
06ef3560-9cd7-4bc3-9741-207bcad05638	EQ_CHEST_C03_EPIC	1	EQUIPMENT	CHEST	Thiên Lôi · Đạo Y	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,EPIC,SET_PIECE,SET_EPIC_B}	{"ARMOR_FLAT": 33, "CRIT_RATING": 25, "COMBO_RATING": 24, "ACCURACY_RATING": 26, "TOUGHNESS_RATING": 28}	[]	{}	CHEST_COMBO_03	SET_EPIC_B	Thiên Lôi
e42c5dca-1e96-4874-ae5a-4e47f80394d3	EQ_CHEST_C03_LEGENDARY	1	EQUIPMENT	CHEST	Phượng Hoàng Niết Bàn · Đạo Y	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"ARMOR_FLAT": 42, "CRIT_RATING": 31, "COMBO_RATING": 31, "ACCURACY_RATING": 34, "TOUGHNESS_RATING": 35}	[{"code": "LEGENDARY_CHEST_C03", "description": "Khi HP lần đầu xuống dưới 35%, nhận Barrier tạm thời; có cooldown."}]	{}	CHEST_COMBO_03	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
f6fb20c2-462d-4f78-97c0-a03439f044e4	EQ_CHEST_C03_MYTHIC	1	EQUIPMENT	CHEST	Tu La Huyết Ngục · Đạo Y	\N	CHEST	MYTHIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"ARMOR_FLAT": 53, "CRIT_RATING": 39, "COMBO_RATING": 39, "ACCURACY_RATING": 42, "TOUGHNESS_RATING": 44}	[]	{}	CHEST_COMBO_03	SET_MYTHIC_B	Tu La Huyết Ngục
08490676-ee5c-4612-a455-e526f491abd9	EQ_CHEST_C03_ANCIENT	1	EQUIPMENT	CHEST	Thái Cổ Chiến Thiên · Đạo Y	\N	CHEST	ANCIENT	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"ARMOR_FLAT": 65, "CRIT_RATING": 48, "COMBO_RATING": 47, "ACCURACY_RATING": 52, "TOUGHNESS_RATING": 54}	[]	{}	CHEST_COMBO_03	SET_ANCIENT_B	Thái Cổ Chiến Thiên
63cc2963-113f-46d2-aac9-cb59990040c1	EQ_CHEST_C03_DIVINE	1	EQUIPMENT	CHEST	Thiên Đạo Vấn Kiếm · Đạo Y	\N	CHEST	DIVINE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,DIVINE,SET_PIECE,SET_DIVINE_B}	{"ARMOR_FLAT": 78, "CRIT_RATING": 58, "COMBO_RATING": 57, "ACCURACY_RATING": 62, "TOUGHNESS_RATING": 66}	[]	{}	CHEST_COMBO_03	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
a38c6fd2-02dd-41c5-8402-aba50de5d904	EQ_CHEST_C03_RELIC	1	EQUIPMENT	CHEST	Luân Hồi Táng Tiên · Đạo Y	\N	CHEST	RELIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,RELIC,SET_PIECE,SET_RELIC_B}	{"ARMOR_FLAT": 93, "CRIT_RATING": 69, "COMBO_RATING": 68, "ACCURACY_RATING": 74, "TOUGHNESS_RATING": 78}	[]	{}	CHEST_COMBO_03	SET_RELIC_B	Luân Hồi Táng Tiên
c1a97f7f-13a6-4d89-965a-f62c2c3edb46	EQ_CHEST_C03_GOD	1	EQUIPMENT	CHEST	Đại Đạo Táng Thiên · Đạo Y	\N	CHEST	GOD	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_03,GOD,SET_PIECE,SET_GOD_B}	{"ARMOR_FLAT": 110, "CRIT_RATING": 82, "COMBO_RATING": 80, "ACCURACY_RATING": 88, "TOUGHNESS_RATING": 92}	[]	{}	CHEST_COMBO_03	SET_GOD_B	Đại Đạo Táng Thiên
ee386ad6-e88b-494f-a900-9ab0485495c4	EQ_CHEST_C04_COMMON	1	EQUIPMENT	CHEST	Hắc Thiết Huyết Khải Đạo Bào	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,COMMON,LOOSE_ITEM}	{"HP_FLAT": 200, "ARMOR_FLAT": 19, "CRIT_RATING": 14, "LIFESTEAL_PCT": 0.9}	[]	{}	CHEST_COMBO_04	\N	\N
18a9d8e3-4760-40cd-aed2-48a53e9a3a74	EQ_CHEST_C04_UNCOMMON	1	EQUIPMENT	CHEST	Thanh Phong Huyết Khải Đạo Bào	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 260, "ARMOR_FLAT": 24, "CRIT_RATING": 18, "LIFESTEAL_PCT": 1.2}	[]	{}	CHEST_COMBO_04	\N	\N
90e00b26-5dca-48a2-b7be-638e3cb52f5c	EQ_CHEST_C04_RARE	1	EQUIPMENT	CHEST	Huyết Sát Huyết Khải Đạo Bào	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,RARE,LOOSE_ITEM}	{"HP_FLAT": 340, "ARMOR_FLAT": 32, "CRIT_RATING": 24, "LIFESTEAL_PCT": 1.6}	[]	{}	CHEST_COMBO_04	\N	\N
c79fd8b6-6e99-490f-b6a4-ac0e0de46b56	EQ_CHEST_C04_EPIC	1	EQUIPMENT	CHEST	Thiên Lôi Huyết Khải Đạo Bào	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,EPIC,LOOSE_ITEM}	{"HP_FLAT": 440, "ARMOR_FLAT": 41, "CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1}	[]	{}	CHEST_COMBO_04	\N	\N
f25bab4b-3844-4e28-a4f8-c96bcd4cf7f7	EQ_CHEST_C04_LEGENDARY	1	EQUIPMENT	CHEST	Chân Long Huyết Khải Đạo Bào · Chi Ảnh	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 560, "ARMOR_FLAT": 53, "CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6}	[{"code": "LEGENDARY_CHEST_C04", "description": "Khi HP lần đầu xuống dưới 35%, nhận Barrier tạm thời; có cooldown."}]	{}	CHEST_COMBO_04	\N	\N
f7d77cd1-f48a-4d13-bfbf-e646816051b9	EQ_CHEST_C04_MYTHIC	1	EQUIPMENT	CHEST	Thái Hư Huyết Khải Đạo Bào · Tịch Diệt	\N	CHEST	MYTHIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 700, "ARMOR_FLAT": 66, "CRIT_RATING": 49, "LIFESTEAL_PCT": 3.3}	[]	{}	CHEST_COMBO_04	\N	\N
d2e01ed3-e5e6-4774-a9f3-f5403c0ff169	EQ_CHEST_C04_ANCIENT	1	EQUIPMENT	CHEST	Hồng Hoang Huyết Khải Đạo Bào · Khai Thiên	\N	CHEST	ANCIENT	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 860, "ARMOR_FLAT": 81, "CRIT_RATING": 60, "LIFESTEAL_PCT": 4.0}	[]	{}	CHEST_COMBO_04	\N	\N
b87bd621-e658-4492-bc67-cd107cfe128c	EQ_CHEST_C04_DIVINE	1	EQUIPMENT	CHEST	Cửu Thiên Huyết Khải Đạo Bào · Vấn Thiên	\N	CHEST	DIVINE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 1040, "ARMOR_FLAT": 98, "CRIT_RATING": 73, "LIFESTEAL_PCT": 4.9}	[]	{}	CHEST_COMBO_04	\N	\N
e145b694-8742-4fdd-8226-f4ab960e5df1	EQ_CHEST_C04_RELIC	1	EQUIPMENT	CHEST	Vạn Cổ Huyết Khải Đạo Bào · Luân Hồi	\N	CHEST	RELIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,RELIC,LOOSE_ITEM}	{"HP_FLAT": 1240, "ARMOR_FLAT": 116, "CRIT_RATING": 87, "LIFESTEAL_PCT": 5.8}	[]	{}	CHEST_COMBO_04	\N	\N
dd6e15e7-d24f-4647-9684-188e8caaadf6	EQ_CHEST_C04_GOD	1	EQUIPMENT	CHEST	Hỗn Độn Huyết Khải Đạo Bào · Khai Giới	\N	CHEST	GOD	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_04,GOD,LOOSE_ITEM}	{"HP_FLAT": 1460, "ARMOR_FLAT": 137, "CRIT_RATING": 102, "LIFESTEAL_PCT": 6.8}	[]	{}	CHEST_COMBO_04	\N	\N
fcb14cf2-ff9f-4875-8b46-a9a2a36709c3	EQ_CHEST_C05_COMMON	1	EQUIPMENT	CHEST	Xích Đồng Bất Diệt Bất Diệt Y	\N	CHEST	COMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,COMMON,LOOSE_ITEM}	{"HP_FLAT": 160, "ARMOR_FLAT": 15, "CRIT_RATING": 11, "LIFESTEAL_PCT": 0.8, "TOUGHNESS_RATING": 13}	[]	{}	CHEST_COMBO_05	\N	\N
3da4532e-e910-4d0a-9556-2ff0fc826a11	EQ_CHEST_C05_UNCOMMON	1	EQUIPMENT	CHEST	Tử Trúc Bất Diệt Bất Diệt Y	\N	CHEST	UNCOMMON	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 208, "ARMOR_FLAT": 20, "CRIT_RATING": 15, "LIFESTEAL_PCT": 1.0, "TOUGHNESS_RATING": 16}	[]	{}	CHEST_COMBO_05	\N	\N
b27d1960-7bca-49f2-9f91-129475b9ac43	EQ_CHEST_C05_RARE	1	EQUIPMENT	CHEST	Huyền Băng Bất Diệt Bất Diệt Y	\N	CHEST	RARE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,RARE,LOOSE_ITEM}	{"HP_FLAT": 272, "ARMOR_FLAT": 26, "CRIT_RATING": 19, "LIFESTEAL_PCT": 1.3, "TOUGHNESS_RATING": 21}	[]	{}	CHEST_COMBO_05	\N	\N
2144a736-5e49-4014-9640-ab574e96968c	EQ_CHEST_C05_EPIC	1	EQUIPMENT	CHEST	Hàn Nguyệt Bất Diệt Bất Diệt Y	\N	CHEST	EPIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,EPIC,LOOSE_ITEM}	{"HP_FLAT": 352, "ARMOR_FLAT": 33, "CRIT_RATING": 25, "LIFESTEAL_PCT": 1.7, "TOUGHNESS_RATING": 28}	[]	{}	CHEST_COMBO_05	\N	\N
db0cdeed-97fe-4a88-8182-79e4ea71f07a	EQ_CHEST_C05_LEGENDARY	1	EQUIPMENT	CHEST	Đế Tâm Bất Diệt Bất Diệt Y · Chi Hồn	\N	CHEST	LEGENDARY	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 448, "ARMOR_FLAT": 42, "CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1, "TOUGHNESS_RATING": 35}	[{"code": "LEGENDARY_CHEST_C05", "description": "Khi HP lần đầu xuống dưới 35%, nhận Barrier tạm thời; có cooldown."}]	{}	CHEST_COMBO_05	\N	\N
c09cdc6e-55b4-48cf-b7f7-3694025457c9	EQ_CHEST_C05_MYTHIC	1	EQUIPMENT	CHEST	Tịch Diệt Bất Diệt Bất Diệt Y · Nghịch Mệnh	\N	CHEST	MYTHIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 560, "ARMOR_FLAT": 53, "CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6, "TOUGHNESS_RATING": 44}	[]	{}	CHEST_COMBO_05	\N	\N
f3d8a42c-2a0f-4631-a4ec-d4f53a42b7f5	EQ_CHEST_C05_ANCIENT	1	EQUIPMENT	CHEST	Thái Sơ Bất Diệt Bất Diệt Y · Phá Giới	\N	CHEST	ANCIENT	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 688, "ARMOR_FLAT": 65, "CRIT_RATING": 48, "LIFESTEAL_PCT": 3.2, "TOUGHNESS_RATING": 54}	[]	{}	CHEST_COMBO_05	\N	\N
dacf4a87-1c60-4ed2-9d8d-0dc323784d5d	EQ_CHEST_C05_DIVINE	1	EQUIPMENT	CHEST	Dao Trì Bất Diệt Bất Diệt Y · Đăng Tiên	\N	CHEST	DIVINE	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 832, "ARMOR_FLAT": 78, "CRIT_RATING": 58, "LIFESTEAL_PCT": 3.9, "TOUGHNESS_RATING": 66}	[]	{}	CHEST_COMBO_05	\N	\N
2a7172fa-9c2f-4c14-863c-0956b3f817ef	EQ_CHEST_C05_RELIC	1	EQUIPMENT	CHEST	Kỷ Nguyên Bất Diệt Bất Diệt Y · Vĩnh Hằng	\N	CHEST	RELIC	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,RELIC,LOOSE_ITEM}	{"HP_FLAT": 992, "ARMOR_FLAT": 93, "CRIT_RATING": 69, "LIFESTEAL_PCT": 4.7, "TOUGHNESS_RATING": 78}	[]	{}	CHEST_COMBO_05	\N	\N
d341956c-a0fb-4f90-97e9-00a66a602077	EQ_CHEST_C05_GOD	1	EQUIPMENT	CHEST	Vạn Giới Bất Diệt Bất Diệt Y · Tận Diệt	\N	CHEST	GOD	f	\N	ACCOUNT	t	{CHEST,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,CHEST_COMBO_05,GOD,LOOSE_ITEM}	{"HP_FLAT": 1168, "ARMOR_FLAT": 110, "CRIT_RATING": 82, "LIFESTEAL_PCT": 5.5, "TOUGHNESS_RATING": 92}	[]	{}	CHEST_COMBO_05	\N	\N
84082daf-5348-4b76-980e-58457f325c73	EQ_SHOULDER_C01_COMMON	1	EQUIPMENT	SHOULDER	Hắc Thiết Hộ Thể · Hộ Kiên	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "TOUGHNESS_RATING": 32}	[]	{}	SHOULDER_COMBO_01	SET_COMMON_A	Hắc Thiết Hộ Thể
07fdf40b-d593-4952-acf6-0cb2d70d01a3	EQ_SHOULDER_C01_UNCOMMON	1	EQUIPMENT	SHOULDER	Linh Cốt Thanh Tâm · Hộ Kiên	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "TOUGHNESS_RATING": 41}	[]	{}	SHOULDER_COMBO_01	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
6e17c908-ce96-4f64-a93d-b4775e0ff084	EQ_SHOULDER_C01_RARE	1	EQUIPMENT	SHOULDER	Huyền Giáp Bất Động · Hộ Kiên	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "TOUGHNESS_RATING": 54}	[]	{}	SHOULDER_COMBO_01	SET_RARE_A	Huyền Giáp Bất Động
a495fd61-5c6e-4c69-ba1c-b02af5790fa9	EQ_SHOULDER_C01_EPIC	1	EQUIPMENT	SHOULDER	Cửu U Huyền Minh · Hộ Kiên	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "TOUGHNESS_RATING": 69}	[]	{}	SHOULDER_COMBO_01	SET_EPIC_A	Cửu U Huyền Minh
304efeb1-6794-4aa5-8923-e98cae35c043	EQ_SHOULDER_C01_LEGENDARY	1	EQUIPMENT	SHOULDER	Chân Long Trấn Nhạc · Hộ Kiên	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "TOUGHNESS_RATING": 88}	[{"code": "LEGENDARY_SHOULDER_C01", "description": "Trong Guard, một phần Toughness được chuyển thành Barrier Strength tạm thời."}]	{}	SHOULDER_COMBO_01	SET_LEGENDARY_A	Chân Long Trấn Nhạc
f927dad5-53cf-44b3-89e6-2904fa2f2c5a	EQ_SHOULDER_C01_MYTHIC	1	EQUIPMENT	SHOULDER	Thái Hư Vô Tướng · Hộ Kiên	\N	SHOULDER	MYTHIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "TOUGHNESS_RATING": 110}	[]	{}	SHOULDER_COMBO_01	SET_MYTHIC_A	Thái Hư Vô Tướng
4d21e21c-aa30-4eb2-a397-74c33785ea3c	EQ_SHOULDER_C01_ANCIENT	1	EQUIPMENT	SHOULDER	Hồng Hoang Bất Diệt · Hộ Kiên	\N	SHOULDER	ANCIENT	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "TOUGHNESS_RATING": 135}	[]	{}	SHOULDER_COMBO_01	SET_ANCIENT_A	Hồng Hoang Bất Diệt
910da1d6-ae9b-4587-979c-45e474410483	EQ_SHOULDER_C01_DIVINE	1	EQUIPMENT	SHOULDER	Cửu Thiên Thánh Thể · Hộ Kiên	\N	SHOULDER	DIVINE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "TOUGHNESS_RATING": 164}	[]	{}	SHOULDER_COMBO_01	SET_DIVINE_A	Cửu Thiên Thánh Thể
35bd8036-edb0-4231-ab4b-8d76a261e833	EQ_SHOULDER_C01_RELIC	1	EQUIPMENT	SHOULDER	Vạn Cổ Bất Hủ · Hộ Kiên	\N	SHOULDER	RELIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "TOUGHNESS_RATING": 195}	[]	{}	SHOULDER_COMBO_01	SET_RELIC_A	Vạn Cổ Bất Hủ
5f946059-874a-4830-a671-261b5fbee640	EQ_SHOULDER_C01_GOD	1	EQUIPMENT	SHOULDER	Hỗn Độn Vô Cực · Hộ Kiên	\N	SHOULDER	GOD	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_01,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "TOUGHNESS_RATING": 230}	[]	{}	SHOULDER_COMBO_01	SET_GOD_A	Hỗn Độn Vô Cực
5d2f9262-fbfa-4cc6-b4cb-26948ce4248d	EQ_SHOULDER_C02_COMMON	1	EQUIPMENT	SHOULDER	Hoàng Đồng Trấn Sơn Huyền Kiên	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 38, "TOUGHNESS_RATING": 32}	[]	{}	SHOULDER_COMBO_02	\N	\N
9e82b4bd-ff75-4e22-b7fd-7fc60747db2d	EQ_SHOULDER_C02_UNCOMMON	1	EQUIPMENT	SHOULDER	Lam Tinh Trấn Sơn Huyền Kiên	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 49, "TOUGHNESS_RATING": 41}	[]	{}	SHOULDER_COMBO_02	\N	\N
10d56996-da5e-4f10-af8d-49cb107f0e0c	EQ_SHOULDER_C02_RARE	1	EQUIPMENT	SHOULDER	Bích Lạc Trấn Sơn Huyền Kiên	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 64, "TOUGHNESS_RATING": 54}	[]	{}	SHOULDER_COMBO_02	\N	\N
2cf2c209-57e0-4364-820d-30b956a12492	EQ_SHOULDER_C02_EPIC	1	EQUIPMENT	SHOULDER	Xích Tiêu Trấn Sơn Huyền Kiên	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 83, "TOUGHNESS_RATING": 69}	[]	{}	SHOULDER_COMBO_02	\N	\N
ef6f44ba-80cc-4949-b1d4-da696b0a7604	EQ_SHOULDER_C02_LEGENDARY	1	EQUIPMENT	SHOULDER	Bạch Hổ Trấn Sơn Huyền Kiên · Chi Mệnh	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 105, "TOUGHNESS_RATING": 88}	[{"code": "LEGENDARY_SHOULDER_C02", "description": "Trong Guard, một phần Toughness được chuyển thành Barrier Strength tạm thời."}]	{}	SHOULDER_COMBO_02	\N	\N
081a0c45-eb0d-4fa6-8ebd-329165a00e40	EQ_SHOULDER_C02_MYTHIC	1	EQUIPMENT	SHOULDER	Tinh Hà Trấn Sơn Huyền Kiên · Đoạn Không	\N	SHOULDER	MYTHIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 131, "TOUGHNESS_RATING": 110}	[]	{}	SHOULDER_COMBO_02	\N	\N
dad8ab17-dfba-424a-9529-7e04d25973e6	EQ_SHOULDER_C02_ANCIENT	1	EQUIPMENT	SHOULDER	Cổ Thần Trấn Sơn Huyền Kiên · Trấn Thế	\N	SHOULDER	ANCIENT	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 161, "TOUGHNESS_RATING": 135}	[]	{}	SHOULDER_COMBO_02	\N	\N
49580a36-a975-4371-92f0-efdc403aafb4	EQ_SHOULDER_C02_DIVINE	1	EQUIPMENT	SHOULDER	Thái Thanh Trấn Sơn Huyền Kiên · Ngự Đạo	\N	SHOULDER	DIVINE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 195, "TOUGHNESS_RATING": 164}	[]	{}	SHOULDER_COMBO_02	\N	\N
2d2f785c-3ee0-417a-85d5-dba2277b75c8	EQ_SHOULDER_C02_RELIC	1	EQUIPMENT	SHOULDER	Thái Nhất Trấn Sơn Huyền Kiên · Bất Hủ	\N	SHOULDER	RELIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 233, "TOUGHNESS_RATING": 195}	[]	{}	SHOULDER_COMBO_02	\N	\N
cf77b48c-8b36-4797-b1e5-19c08c79a9d2	EQ_SHOULDER_C02_GOD	1	EQUIPMENT	SHOULDER	Vô Lượng Trấn Sơn Huyền Kiên · Quy Nhất	\N	SHOULDER	GOD	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_02,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 274, "TOUGHNESS_RATING": 230}	[]	{}	SHOULDER_COMBO_02	\N	\N
10672ff0-0169-42b7-863f-995bdb0772e1	EQ_SHOULDER_C03_COMMON	1	EQUIPMENT	SHOULDER	Ô Kim Ảnh Hộ Long Kiên	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,COMMON,LOOSE_ITEM}	{"EVASION_RATING": 30, "TOUGHNESS_RATING": 32}	[]	{}	SHOULDER_COMBO_03	\N	\N
a9230cd7-4e7e-4d27-9c47-3d163a35d268	EQ_SHOULDER_C03_UNCOMMON	1	EQUIPMENT	SHOULDER	Linh Mộc Ảnh Hộ Long Kiên	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"EVASION_RATING": 39, "TOUGHNESS_RATING": 41}	[]	{}	SHOULDER_COMBO_03	\N	\N
8e06432b-8b8e-4c11-872f-1bc3b363f198	EQ_SHOULDER_C03_RARE	1	EQUIPMENT	SHOULDER	Xích Viêm Ảnh Hộ Long Kiên	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,RARE,LOOSE_ITEM}	{"EVASION_RATING": 51, "TOUGHNESS_RATING": 54}	[]	{}	SHOULDER_COMBO_03	\N	\N
547162c6-cd0c-454b-ab00-2acc16a34739	EQ_SHOULDER_C03_EPIC	1	EQUIPMENT	SHOULDER	Liệt Dương Ảnh Hộ Long Kiên	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,EPIC,LOOSE_ITEM}	{"EVASION_RATING": 66, "TOUGHNESS_RATING": 69}	[]	{}	SHOULDER_COMBO_03	\N	\N
f1c60519-51cc-4938-8f31-421dfb6e31c1	EQ_SHOULDER_C03_LEGENDARY	1	EQUIPMENT	SHOULDER	Kỳ Lân Ảnh Hộ Long Kiên · Chi Nộ	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"EVASION_RATING": 84, "TOUGHNESS_RATING": 88}	[{"code": "LEGENDARY_SHOULDER_C03", "description": "Trong Guard, một phần Toughness được chuyển thành Barrier Strength tạm thời."}]	{}	SHOULDER_COMBO_03	\N	\N
46c97457-1f52-48c4-84d9-f3b201eba8b6	EQ_SHOULDER_C03_MYTHIC	1	EQUIPMENT	SHOULDER	Vô Cực Ảnh Hộ Long Kiên · Vô Tướng	\N	SHOULDER	MYTHIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,MYTHIC,LOOSE_ITEM}	{"EVASION_RATING": 105, "TOUGHNESS_RATING": 110}	[]	{}	SHOULDER_COMBO_03	\N	\N
e4698eee-00fc-4167-ad35-f56980510176	EQ_SHOULDER_C03_ANCIENT	1	EQUIPMENT	SHOULDER	Khai Thiên Ảnh Hộ Long Kiên · Hoang Cổ	\N	SHOULDER	ANCIENT	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,ANCIENT,LOOSE_ITEM}	{"EVASION_RATING": 129, "TOUGHNESS_RATING": 135}	[]	{}	SHOULDER_COMBO_03	\N	\N
431706ef-56f7-4aab-bed1-a76613f893c1	EQ_SHOULDER_C03_DIVINE	1	EQUIPMENT	SHOULDER	Thần Tiêu Ảnh Hộ Long Kiên · Phong Thần	\N	SHOULDER	DIVINE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,DIVINE,LOOSE_ITEM}	{"EVASION_RATING": 156, "TOUGHNESS_RATING": 164}	[]	{}	SHOULDER_COMBO_03	\N	\N
e6c2b1d5-5fc1-402f-b7d6-2ad94c261a1b	EQ_SHOULDER_C03_RELIC	1	EQUIPMENT	SHOULDER	Bất Hủ Ảnh Hộ Long Kiên · Kỷ Nguyên	\N	SHOULDER	RELIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,RELIC,LOOSE_ITEM}	{"EVASION_RATING": 186, "TOUGHNESS_RATING": 195}	[]	{}	SHOULDER_COMBO_03	\N	\N
ebf4cee4-edd8-4d15-ba94-7201b2beb6a3	EQ_SHOULDER_C03_GOD	1	EQUIPMENT	SHOULDER	Chư Thiên Ảnh Hộ Long Kiên · Vô Cực	\N	SHOULDER	GOD	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_03,GOD,LOOSE_ITEM}	{"EVASION_RATING": 219, "TOUGHNESS_RATING": 230}	[]	{}	SHOULDER_COMBO_03	\N	\N
60cb28a5-e417-4c6d-a05c-d245229db333	EQ_SHOULDER_C04_COMMON	1	EQUIPMENT	SHOULDER	Liệp Phong · Chiến Kiên	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,COMMON,SET_PIECE,SET_COMMON_B}	{"ARMOR_FLAT": 19, "CRIT_RATING": 14, "ACCURACY_RATING": 15, "TOUGHNESS_RATING": 16}	[]	{}	SHOULDER_COMBO_04	SET_COMMON_B	Liệp Phong
d612b20d-dbf3-4614-931a-5566e89e97a8	EQ_SHOULDER_C04_UNCOMMON	1	EQUIPMENT	SHOULDER	Thanh Phong Truy Ảnh · Chiến Kiên	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"ARMOR_FLAT": 24, "CRIT_RATING": 18, "ACCURACY_RATING": 20, "TOUGHNESS_RATING": 20}	[]	{}	SHOULDER_COMBO_04	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
dbe576f8-8634-405e-b0d2-ab3254109145	EQ_SHOULDER_C04_RARE	1	EQUIPMENT	SHOULDER	Huyết Sát · Chiến Kiên	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,RARE,SET_PIECE,SET_RARE_B}	{"ARMOR_FLAT": 32, "CRIT_RATING": 24, "ACCURACY_RATING": 26, "TOUGHNESS_RATING": 27}	[]	{}	SHOULDER_COMBO_04	SET_RARE_B	Huyết Sát
b0479836-41ac-4f35-9de8-fedc55981651	EQ_SHOULDER_C04_EPIC	1	EQUIPMENT	SHOULDER	Thiên Lôi · Chiến Kiên	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,EPIC,SET_PIECE,SET_EPIC_B}	{"ARMOR_FLAT": 41, "CRIT_RATING": 31, "ACCURACY_RATING": 33, "TOUGHNESS_RATING": 35}	[]	{}	SHOULDER_COMBO_04	SET_EPIC_B	Thiên Lôi
1f0a4e55-0dad-4994-bc4a-25830db04d98	EQ_SHOULDER_C04_LEGENDARY	1	EQUIPMENT	SHOULDER	Phượng Hoàng Niết Bàn · Chiến Kiên	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"ARMOR_FLAT": 53, "CRIT_RATING": 39, "ACCURACY_RATING": 42, "TOUGHNESS_RATING": 44}	[{"code": "LEGENDARY_SHOULDER_C04", "description": "Trong Guard, một phần Toughness được chuyển thành Barrier Strength tạm thời."}]	{}	SHOULDER_COMBO_04	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
53376603-79db-4417-83ec-43dcc8463e12	EQ_SHOULDER_C04_MYTHIC	1	EQUIPMENT	SHOULDER	Tu La Huyết Ngục · Chiến Kiên	\N	SHOULDER	MYTHIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"ARMOR_FLAT": 66, "CRIT_RATING": 49, "ACCURACY_RATING": 53, "TOUGHNESS_RATING": 55}	[]	{}	SHOULDER_COMBO_04	SET_MYTHIC_B	Tu La Huyết Ngục
cdebf3a8-ccde-467a-8d3b-b1d4d471d04c	EQ_SHOULDER_C04_ANCIENT	1	EQUIPMENT	SHOULDER	Thái Cổ Chiến Thiên · Chiến Kiên	\N	SHOULDER	ANCIENT	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"ARMOR_FLAT": 81, "CRIT_RATING": 60, "ACCURACY_RATING": 65, "TOUGHNESS_RATING": 68}	[]	{}	SHOULDER_COMBO_04	SET_ANCIENT_B	Thái Cổ Chiến Thiên
153a71ed-c6b6-4c07-9282-ee00f4b1a53d	EQ_SHOULDER_C04_DIVINE	1	EQUIPMENT	SHOULDER	Thiên Đạo Vấn Kiếm · Chiến Kiên	\N	SHOULDER	DIVINE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,DIVINE,SET_PIECE,SET_DIVINE_B}	{"ARMOR_FLAT": 98, "CRIT_RATING": 73, "ACCURACY_RATING": 78, "TOUGHNESS_RATING": 82}	[]	{}	SHOULDER_COMBO_04	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
2b36ac65-8d40-4b52-a3b3-029f96a8da7e	EQ_SHOULDER_C04_RELIC	1	EQUIPMENT	SHOULDER	Luân Hồi Táng Tiên · Chiến Kiên	\N	SHOULDER	RELIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,RELIC,SET_PIECE,SET_RELIC_B}	{"ARMOR_FLAT": 116, "CRIT_RATING": 87, "ACCURACY_RATING": 93, "TOUGHNESS_RATING": 98}	[]	{}	SHOULDER_COMBO_04	SET_RELIC_B	Luân Hồi Táng Tiên
be20552f-adf5-41a2-b5d8-9a3998f6188e	EQ_SHOULDER_C04_GOD	1	EQUIPMENT	SHOULDER	Đại Đạo Táng Thiên · Chiến Kiên	\N	SHOULDER	GOD	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_04,GOD,SET_PIECE,SET_GOD_B}	{"ARMOR_FLAT": 137, "CRIT_RATING": 102, "ACCURACY_RATING": 110, "TOUGHNESS_RATING": 115}	[]	{}	SHOULDER_COMBO_04	SET_GOD_B	Đại Đạo Táng Thiên
98e4bccd-5f37-4f34-b98b-8ee1e7f02ad3	EQ_SHOULDER_C05_COMMON	1	EQUIPMENT	SHOULDER	Hắc Thiết Huyết Chiến Đạo Kiên	\N	SHOULDER	COMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,COMMON,LOOSE_ITEM}	{"HP_FLAT": 160, "BLEED_RATING": 12, "COMBO_RATING": 11, "LIFESTEAL_PCT": 0.8, "TOUGHNESS_RATING": 13}	[]	{}	SHOULDER_COMBO_05	\N	\N
749c4680-475e-4cab-bc4d-ecba6a58eabe	EQ_SHOULDER_C05_UNCOMMON	1	EQUIPMENT	SHOULDER	Thanh Phong Huyết Chiến Đạo Kiên	\N	SHOULDER	UNCOMMON	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 208, "BLEED_RATING": 15, "COMBO_RATING": 14, "LIFESTEAL_PCT": 1.0, "TOUGHNESS_RATING": 16}	[]	{}	SHOULDER_COMBO_05	\N	\N
d673b1e0-943f-4f5a-b077-d79911566833	EQ_SHOULDER_C05_RARE	1	EQUIPMENT	SHOULDER	Huyết Sát Huyết Chiến Đạo Kiên	\N	SHOULDER	RARE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,RARE,LOOSE_ITEM}	{"HP_FLAT": 272, "BLEED_RATING": 20, "COMBO_RATING": 19, "LIFESTEAL_PCT": 1.3, "TOUGHNESS_RATING": 21}	[]	{}	SHOULDER_COMBO_05	\N	\N
532aae54-d260-4a1c-a0e0-2f482ad098f1	EQ_SHOULDER_C05_EPIC	1	EQUIPMENT	SHOULDER	Thiên Lôi Huyết Chiến Đạo Kiên	\N	SHOULDER	EPIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,EPIC,LOOSE_ITEM}	{"HP_FLAT": 352, "BLEED_RATING": 26, "COMBO_RATING": 24, "LIFESTEAL_PCT": 1.7, "TOUGHNESS_RATING": 28}	[]	{}	SHOULDER_COMBO_05	\N	\N
a59fa05c-8185-4225-81e7-91c5567d1201	EQ_SHOULDER_C05_LEGENDARY	1	EQUIPMENT	SHOULDER	Chân Long Huyết Chiến Đạo Kiên · Chi Hồn	\N	SHOULDER	LEGENDARY	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 448, "BLEED_RATING": 32, "COMBO_RATING": 31, "LIFESTEAL_PCT": 2.1, "TOUGHNESS_RATING": 35}	[{"code": "LEGENDARY_SHOULDER_C05", "description": "Trong Guard, một phần Toughness được chuyển thành Barrier Strength tạm thời."}]	{}	SHOULDER_COMBO_05	\N	\N
2a83472d-06f4-4839-a072-28d3874f240e	EQ_SHOULDER_C05_MYTHIC	1	EQUIPMENT	SHOULDER	Thái Hư Huyết Chiến Đạo Kiên · Nghịch Mệnh	\N	SHOULDER	MYTHIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 560, "BLEED_RATING": 41, "COMBO_RATING": 39, "LIFESTEAL_PCT": 2.6, "TOUGHNESS_RATING": 44}	[]	{}	SHOULDER_COMBO_05	\N	\N
981c54c1-4618-462e-a5c3-d7dc13a6cef9	EQ_SHOULDER_C05_ANCIENT	1	EQUIPMENT	SHOULDER	Hồng Hoang Huyết Chiến Đạo Kiên · Phá Giới	\N	SHOULDER	ANCIENT	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 688, "BLEED_RATING": 50, "COMBO_RATING": 47, "LIFESTEAL_PCT": 3.2, "TOUGHNESS_RATING": 54}	[]	{}	SHOULDER_COMBO_05	\N	\N
ae2d19e0-55d8-4544-8c7e-e588f59d5d9c	EQ_SHOULDER_C05_DIVINE	1	EQUIPMENT	SHOULDER	Cửu Thiên Huyết Chiến Đạo Kiên · Đăng Tiên	\N	SHOULDER	DIVINE	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 832, "BLEED_RATING": 60, "COMBO_RATING": 57, "LIFESTEAL_PCT": 3.9, "TOUGHNESS_RATING": 66}	[]	{}	SHOULDER_COMBO_05	\N	\N
6b330bbe-37c0-425c-8888-43d8f3cc0568	EQ_SHOULDER_C05_RELIC	1	EQUIPMENT	SHOULDER	Vạn Cổ Huyết Chiến Đạo Kiên · Vĩnh Hằng	\N	SHOULDER	RELIC	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,RELIC,LOOSE_ITEM}	{"HP_FLAT": 992, "BLEED_RATING": 72, "COMBO_RATING": 68, "LIFESTEAL_PCT": 4.7, "TOUGHNESS_RATING": 78}	[]	{}	SHOULDER_COMBO_05	\N	\N
3ca2cd55-3343-4798-b2dd-635527efee17	EQ_SHOULDER_C05_GOD	1	EQUIPMENT	SHOULDER	Hỗn Độn Huyết Chiến Đạo Kiên · Tận Diệt	\N	SHOULDER	GOD	f	\N	ACCOUNT	t	{SHOULDER,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,SHOULDER_COMBO_05,GOD,LOOSE_ITEM}	{"HP_FLAT": 1168, "BLEED_RATING": 85, "COMBO_RATING": 80, "LIFESTEAL_PCT": 5.5, "TOUGHNESS_RATING": 92}	[]	{}	SHOULDER_COMBO_05	\N	\N
a659bab2-2886-42b6-8e5f-f48febcdfb10	EQ_AMULET_C01_COMMON	1	EQUIPMENT	AMULET	Thanh Đồng Phá Vọng Linh Bội	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,COMMON,LOOSE_ITEM}	{"COMBO_RATING": 18, "ACCURACY_RATING": 20, "DAMAGE_BONUS_PCT": 3.0}	[]	{}	AMULET_COMBO_01	\N	\N
2ff14662-cfe7-4d78-9d9c-e5b96667f1cc	EQ_AMULET_C01_UNCOMMON	1	EQUIPMENT	AMULET	Bích Thủy Phá Vọng Linh Bội	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"COMBO_RATING": 24, "ACCURACY_RATING": 26, "DAMAGE_BONUS_PCT": 3.9}	[]	{}	AMULET_COMBO_01	\N	\N
e5ec7ac6-1c64-4350-91e6-c602fa9b91ef	EQ_AMULET_C01_RARE	1	EQUIPMENT	AMULET	U Minh Phá Vọng Linh Bội	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,RARE,LOOSE_ITEM}	{"COMBO_RATING": 31, "ACCURACY_RATING": 34, "DAMAGE_BONUS_PCT": 5.1}	[]	{}	AMULET_COMBO_01	\N	\N
315daaaa-252a-43dc-bfde-40ebafad15f3	EQ_AMULET_C01_EPIC	1	EQUIPMENT	AMULET	Cửu U Phá Vọng Linh Bội	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,EPIC,LOOSE_ITEM}	{"COMBO_RATING": 40, "ACCURACY_RATING": 44, "DAMAGE_BONUS_PCT": 6.6}	[]	{}	AMULET_COMBO_01	\N	\N
96d3361b-3d28-43d3-9493-b02e7bfb63b7	EQ_AMULET_C01_LEGENDARY	1	EQUIPMENT	AMULET	Phượng Hoàng Phá Vọng Linh Bội · Chi Tâm	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"COMBO_RATING": 51, "ACCURACY_RATING": 56, "DAMAGE_BONUS_PCT": 8.4}	[{"code": "LEGENDARY_AMULET_C01", "description": "Status đầu tiên áp thành công mỗi round cấp Accuracy tạm thời."}]	{}	AMULET_COMBO_01	\N	\N
316a2818-cf58-46b6-84c7-ae25e854aed7	EQ_AMULET_C01_MYTHIC	1	EQUIPMENT	AMULET	Tu La Phá Vọng Linh Bội · Phệ Hồn	\N	AMULET	MYTHIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,MYTHIC,LOOSE_ITEM}	{"COMBO_RATING": 64, "ACCURACY_RATING": 70, "DAMAGE_BONUS_PCT": 10.5}	[]	{}	AMULET_COMBO_01	\N	\N
ed8845be-e99f-41a7-b9ff-0eeea7aaf208	EQ_AMULET_C01_ANCIENT	1	EQUIPMENT	AMULET	Thái Cổ Phá Vọng Linh Bội · Vấn Đạo	\N	AMULET	ANCIENT	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,ANCIENT,LOOSE_ITEM}	{"COMBO_RATING": 79, "ACCURACY_RATING": 86, "DAMAGE_BONUS_PCT": 12.9}	[]	{}	AMULET_COMBO_01	\N	\N
036ac5e9-085e-42b0-836d-349ac6e1a0e8	EQ_AMULET_C01_DIVINE	1	EQUIPMENT	AMULET	Thiên Đạo Phá Vọng Linh Bội · Trấn Thiên	\N	AMULET	DIVINE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,DIVINE,LOOSE_ITEM}	{"COMBO_RATING": 95, "ACCURACY_RATING": 104, "DAMAGE_BONUS_PCT": 15.6}	[]	{}	AMULET_COMBO_01	\N	\N
0b202635-fc03-42be-ac3b-c576bea6f982	EQ_AMULET_C01_RELIC	1	EQUIPMENT	AMULET	Luân Hồi Phá Vọng Linh Bội · Vạn Kiếp	\N	AMULET	RELIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,RELIC,LOOSE_ITEM}	{"COMBO_RATING": 114, "ACCURACY_RATING": 124, "DAMAGE_BONUS_PCT": 18.6}	[]	{}	AMULET_COMBO_01	\N	\N
e11bbace-d5fe-44ab-9685-dcc13a44cf39	EQ_AMULET_C01_GOD	1	EQUIPMENT	AMULET	Đại Đạo Phá Vọng Linh Bội · Táng Thiên	\N	AMULET	GOD	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_01,GOD,LOOSE_ITEM}	{"COMBO_RATING": 134, "ACCURACY_RATING": 146, "DAMAGE_BONUS_PCT": 21.9}	[]	{}	AMULET_COMBO_01	\N	\N
b5d159a1-13ac-4657-b1f4-1d250c8fa99a	EQ_AMULET_C02_COMMON	1	EQUIPMENT	AMULET	Liệp Phong · Thiên Châu	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,COMMON,SET_PIECE,SET_COMMON_B}	{"ARMOR_FLAT": 15, "CRIT_RATING": 11, "BLEED_RATING": 12, "COMBO_RATING": 11, "ACCURACY_RATING": 12}	[]	{}	AMULET_COMBO_02	SET_COMMON_B	Liệp Phong
50e85393-64a2-40bc-b339-db556f2ab16a	EQ_AMULET_C02_UNCOMMON	1	EQUIPMENT	AMULET	Thanh Phong Truy Ảnh · Thiên Châu	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"ARMOR_FLAT": 20, "CRIT_RATING": 15, "BLEED_RATING": 15, "COMBO_RATING": 14, "ACCURACY_RATING": 16}	[]	{}	AMULET_COMBO_02	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
02c0a5a2-1910-402c-85a3-f5f0d71c52ea	EQ_AMULET_C02_RARE	1	EQUIPMENT	AMULET	Huyết Sát · Thiên Châu	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,RARE,SET_PIECE,SET_RARE_B}	{"ARMOR_FLAT": 26, "CRIT_RATING": 19, "BLEED_RATING": 20, "COMBO_RATING": 19, "ACCURACY_RATING": 20}	[]	{}	AMULET_COMBO_02	SET_RARE_B	Huyết Sát
417e7244-8b7c-4176-ac0b-6855d2c20b0d	EQ_AMULET_C02_EPIC	1	EQUIPMENT	AMULET	Thiên Lôi · Thiên Châu	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,EPIC,SET_PIECE,SET_EPIC_B}	{"ARMOR_FLAT": 33, "CRIT_RATING": 25, "BLEED_RATING": 26, "COMBO_RATING": 24, "ACCURACY_RATING": 26}	[]	{}	AMULET_COMBO_02	SET_EPIC_B	Thiên Lôi
ed61d0e9-7ae5-4e3c-ba0b-cde7f7bf7021	EQ_AMULET_C02_LEGENDARY	1	EQUIPMENT	AMULET	Phượng Hoàng Niết Bàn · Thiên Châu	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"ARMOR_FLAT": 42, "CRIT_RATING": 31, "BLEED_RATING": 32, "COMBO_RATING": 31, "ACCURACY_RATING": 34}	[{"code": "LEGENDARY_AMULET_C02", "description": "Status đầu tiên áp thành công mỗi round cấp Accuracy tạm thời."}]	{}	AMULET_COMBO_02	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
89e2a14f-4edd-4c2c-a09b-bbebfe2574b2	EQ_AMULET_C02_MYTHIC	1	EQUIPMENT	AMULET	Tu La Huyết Ngục · Thiên Châu	\N	AMULET	MYTHIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"ARMOR_FLAT": 53, "CRIT_RATING": 39, "BLEED_RATING": 41, "COMBO_RATING": 39, "ACCURACY_RATING": 42}	[]	{}	AMULET_COMBO_02	SET_MYTHIC_B	Tu La Huyết Ngục
d9fa18da-c4cf-4647-b949-6044eb8e1835	EQ_AMULET_C02_ANCIENT	1	EQUIPMENT	AMULET	Thái Cổ Chiến Thiên · Thiên Châu	\N	AMULET	ANCIENT	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"ARMOR_FLAT": 65, "CRIT_RATING": 48, "BLEED_RATING": 50, "COMBO_RATING": 47, "ACCURACY_RATING": 52}	[]	{}	AMULET_COMBO_02	SET_ANCIENT_B	Thái Cổ Chiến Thiên
eaea5a4f-b771-4793-bd52-843524cfc593	EQ_AMULET_C02_DIVINE	1	EQUIPMENT	AMULET	Thiên Đạo Vấn Kiếm · Thiên Châu	\N	AMULET	DIVINE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,DIVINE,SET_PIECE,SET_DIVINE_B}	{"ARMOR_FLAT": 78, "CRIT_RATING": 58, "BLEED_RATING": 60, "COMBO_RATING": 57, "ACCURACY_RATING": 62}	[]	{}	AMULET_COMBO_02	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
2a49999c-5e7f-4a49-b308-950054c0d69c	EQ_AMULET_C02_RELIC	1	EQUIPMENT	AMULET	Luân Hồi Táng Tiên · Thiên Châu	\N	AMULET	RELIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,RELIC,SET_PIECE,SET_RELIC_B}	{"ARMOR_FLAT": 93, "CRIT_RATING": 69, "BLEED_RATING": 72, "COMBO_RATING": 68, "ACCURACY_RATING": 74}	[]	{}	AMULET_COMBO_02	SET_RELIC_B	Luân Hồi Táng Tiên
4032e4f5-9381-407a-9f99-4936b50be93a	EQ_AMULET_C02_GOD	1	EQUIPMENT	AMULET	Đại Đạo Táng Thiên · Thiên Châu	\N	AMULET	GOD	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_02,GOD,SET_PIECE,SET_GOD_B}	{"ARMOR_FLAT": 110, "CRIT_RATING": 82, "BLEED_RATING": 85, "COMBO_RATING": 80, "ACCURACY_RATING": 88}	[]	{}	AMULET_COMBO_02	SET_GOD_B	Đại Đạo Táng Thiên
b0b76a72-1684-4eaa-abbd-84ff348c13f9	EQ_AMULET_C03_COMMON	1	EQUIPMENT	AMULET	Hoàng Đồng Minh Giám Đạo Ấn	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 38, "ACCURACY_RATING": 30}	[]	{}	AMULET_COMBO_03	\N	\N
ebf265df-82c4-4286-9030-0e532c3eb50e	EQ_AMULET_C03_UNCOMMON	1	EQUIPMENT	AMULET	Lam Tinh Minh Giám Đạo Ấn	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 49, "ACCURACY_RATING": 39}	[]	{}	AMULET_COMBO_03	\N	\N
5cccb08d-6495-493e-b9fb-e833f67cfdb3	EQ_AMULET_C03_RARE	1	EQUIPMENT	AMULET	Bích Lạc Minh Giám Đạo Ấn	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 64, "ACCURACY_RATING": 51}	[]	{}	AMULET_COMBO_03	\N	\N
4d01517c-e974-4a74-b6f3-3986be069e75	EQ_AMULET_C03_EPIC	1	EQUIPMENT	AMULET	Xích Tiêu Minh Giám Đạo Ấn	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 83, "ACCURACY_RATING": 66}	[]	{}	AMULET_COMBO_03	\N	\N
6d7a85dc-7e06-48cd-89da-dd371d9fe936	EQ_AMULET_C03_LEGENDARY	1	EQUIPMENT	AMULET	Bạch Hổ Minh Giám Đạo Ấn · Chi Nộ	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 105, "ACCURACY_RATING": 84}	[{"code": "LEGENDARY_AMULET_C03", "description": "Status đầu tiên áp thành công mỗi round cấp Accuracy tạm thời."}]	{}	AMULET_COMBO_03	\N	\N
7933e9f1-8006-4c67-af62-e0be044de871	EQ_AMULET_C03_MYTHIC	1	EQUIPMENT	AMULET	Tinh Hà Minh Giám Đạo Ấn · Vô Tướng	\N	AMULET	MYTHIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 131, "ACCURACY_RATING": 105}	[]	{}	AMULET_COMBO_03	\N	\N
f1e9b341-16c9-4468-9fa5-2eef534ddcc8	EQ_AMULET_C03_ANCIENT	1	EQUIPMENT	AMULET	Cổ Thần Minh Giám Đạo Ấn · Hoang Cổ	\N	AMULET	ANCIENT	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 161, "ACCURACY_RATING": 129}	[]	{}	AMULET_COMBO_03	\N	\N
35a4c8c7-e73b-40f5-9cac-6eb9abe1d49c	EQ_AMULET_C03_DIVINE	1	EQUIPMENT	AMULET	Thái Thanh Minh Giám Đạo Ấn · Phong Thần	\N	AMULET	DIVINE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 195, "ACCURACY_RATING": 156}	[]	{}	AMULET_COMBO_03	\N	\N
bb24d888-145f-48d4-b36e-e95a58ff82ab	EQ_AMULET_C03_RELIC	1	EQUIPMENT	AMULET	Thái Nhất Minh Giám Đạo Ấn · Kỷ Nguyên	\N	AMULET	RELIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 233, "ACCURACY_RATING": 186}	[]	{}	AMULET_COMBO_03	\N	\N
cf81b70a-a0e1-41a9-ada5-b8cd362ac6b7	EQ_AMULET_C03_GOD	1	EQUIPMENT	AMULET	Vô Lượng Minh Giám Đạo Ấn · Vô Cực	\N	AMULET	GOD	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_03,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 274, "ACCURACY_RATING": 219}	[]	{}	AMULET_COMBO_03	\N	\N
8a77a64a-4936-4dec-a93c-42dbfeb54036	EQ_AMULET_C04_COMMON	1	EQUIPMENT	AMULET	Hắc Thiết Hộ Thể · Đạo Bội	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "ACCURACY_RATING": 30}	[]	{}	AMULET_COMBO_04	SET_COMMON_A	Hắc Thiết Hộ Thể
9f4e972e-0d9d-437f-bc56-247b5cfc59aa	EQ_AMULET_C04_UNCOMMON	1	EQUIPMENT	AMULET	Linh Cốt Thanh Tâm · Đạo Bội	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "ACCURACY_RATING": 39}	[]	{}	AMULET_COMBO_04	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
1a5f26b6-b722-4f9b-afbc-5b9314e6cbbe	EQ_AMULET_C04_RARE	1	EQUIPMENT	AMULET	Huyền Giáp Bất Động · Đạo Bội	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "ACCURACY_RATING": 51}	[]	{}	AMULET_COMBO_04	SET_RARE_A	Huyền Giáp Bất Động
d0361270-420e-434c-aa96-d8ce593c5b73	EQ_PET_C01_RARE	1	EQUIPMENT	PET	Xích Viêm Chiến Huyết Linh Hồ	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,RARE,LOOSE_ITEM}	{"HP_FLAT": 680, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	PET_COMBO_01	\N	\N
d065e506-4dbb-4e3c-8393-f540f799aeda	EQ_AMULET_C04_EPIC	1	EQUIPMENT	AMULET	Cửu U Huyền Minh · Đạo Bội	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "ACCURACY_RATING": 66}	[]	{}	AMULET_COMBO_04	SET_EPIC_A	Cửu U Huyền Minh
0d1e7a1f-baa4-4e4a-b066-cb6f30d613ce	EQ_AMULET_C04_LEGENDARY	1	EQUIPMENT	AMULET	Chân Long Trấn Nhạc · Đạo Bội	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "ACCURACY_RATING": 84}	[{"code": "LEGENDARY_AMULET_C04", "description": "Status đầu tiên áp thành công mỗi round cấp Accuracy tạm thời."}]	{}	AMULET_COMBO_04	SET_LEGENDARY_A	Chân Long Trấn Nhạc
89d10ec6-96b3-41c2-87e7-df5473e5590d	EQ_AMULET_C04_MYTHIC	1	EQUIPMENT	AMULET	Thái Hư Vô Tướng · Đạo Bội	\N	AMULET	MYTHIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "ACCURACY_RATING": 105}	[]	{}	AMULET_COMBO_04	SET_MYTHIC_A	Thái Hư Vô Tướng
afa2f1bc-b6f7-446c-a7ba-d2347a755735	EQ_AMULET_C04_ANCIENT	1	EQUIPMENT	AMULET	Hồng Hoang Bất Diệt · Đạo Bội	\N	AMULET	ANCIENT	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "ACCURACY_RATING": 129}	[]	{}	AMULET_COMBO_04	SET_ANCIENT_A	Hồng Hoang Bất Diệt
1ecbd8c3-2b16-405b-96e2-63cfbc12987c	EQ_AMULET_C04_DIVINE	1	EQUIPMENT	AMULET	Cửu Thiên Thánh Thể · Đạo Bội	\N	AMULET	DIVINE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "ACCURACY_RATING": 156}	[]	{}	AMULET_COMBO_04	SET_DIVINE_A	Cửu Thiên Thánh Thể
66653b56-5743-41cd-84d6-7f61a216075d	EQ_AMULET_C04_RELIC	1	EQUIPMENT	AMULET	Vạn Cổ Bất Hủ · Đạo Bội	\N	AMULET	RELIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "ACCURACY_RATING": 186}	[]	{}	AMULET_COMBO_04	SET_RELIC_A	Vạn Cổ Bất Hủ
70bc98e3-d633-4378-aaf9-ff5247f389c7	EQ_AMULET_C04_GOD	1	EQUIPMENT	AMULET	Hỗn Độn Vô Cực · Đạo Bội	\N	AMULET	GOD	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_04,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "ACCURACY_RATING": 219}	[]	{}	AMULET_COMBO_04	SET_GOD_A	Hỗn Độn Vô Cực
bfa1e9dc-bd80-4100-9f23-5b134290485f	EQ_AMULET_C05_COMMON	1	EQUIPMENT	AMULET	Mặc Thạch Ảnh Mệnh Mệnh Phù	\N	AMULET	COMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,COMMON,LOOSE_ITEM}	{"HP_FLAT": 200, "LIFESTEAL_PCT": 0.9, "EVASION_RATING": 15, "ACCURACY_RATING": 15}	[]	{}	AMULET_COMBO_05	\N	\N
cb6bd059-5487-4e11-9ac3-9dbd7c751a4d	EQ_AMULET_C05_UNCOMMON	1	EQUIPMENT	AMULET	Hàn Ngọc Ảnh Mệnh Mệnh Phù	\N	AMULET	UNCOMMON	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 260, "LIFESTEAL_PCT": 1.2, "EVASION_RATING": 20, "ACCURACY_RATING": 20}	[]	{}	AMULET_COMBO_05	\N	\N
4cb13000-1a0f-4b72-a303-11a28d5cb8af	EQ_AMULET_C05_RARE	1	EQUIPMENT	AMULET	Kim Cương Ảnh Mệnh Mệnh Phù	\N	AMULET	RARE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,RARE,LOOSE_ITEM}	{"HP_FLAT": 340, "LIFESTEAL_PCT": 1.6, "EVASION_RATING": 26, "ACCURACY_RATING": 26}	[]	{}	AMULET_COMBO_05	\N	\N
4704eaef-934f-4169-ba5a-c833a9a5d30e	EQ_AMULET_C05_EPIC	1	EQUIPMENT	AMULET	Phong Ma Ảnh Mệnh Mệnh Phù	\N	AMULET	EPIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,EPIC,LOOSE_ITEM}	{"HP_FLAT": 440, "LIFESTEAL_PCT": 2.1, "EVASION_RATING": 33, "ACCURACY_RATING": 33}	[]	{}	AMULET_COMBO_05	\N	\N
9003fcc6-df79-4542-8c6b-38f509863e81	EQ_AMULET_C05_LEGENDARY	1	EQUIPMENT	AMULET	Kim Ô Ảnh Mệnh Mệnh Phù · Chi Hồn	\N	AMULET	LEGENDARY	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 560, "LIFESTEAL_PCT": 2.6, "EVASION_RATING": 42, "ACCURACY_RATING": 42}	[{"code": "LEGENDARY_AMULET_C05", "description": "Status đầu tiên áp thành công mỗi round cấp Accuracy tạm thời."}]	{}	AMULET_COMBO_05	\N	\N
b8df475a-1d11-47fa-b3a7-0c3752652ff1	EQ_AMULET_C05_MYTHIC	1	EQUIPMENT	AMULET	Ma La Ảnh Mệnh Mệnh Phù · Nghịch Mệnh	\N	AMULET	MYTHIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 700, "LIFESTEAL_PCT": 3.3, "EVASION_RATING": 53, "ACCURACY_RATING": 53}	[]	{}	AMULET_COMBO_05	\N	\N
4a14c59f-0740-4130-84db-ceed358f8300	EQ_AMULET_C05_ANCIENT	1	EQUIPMENT	AMULET	Viễn Cổ Ảnh Mệnh Mệnh Phù · Phá Giới	\N	AMULET	ANCIENT	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 860, "LIFESTEAL_PCT": 4.0, "EVASION_RATING": 65, "ACCURACY_RATING": 65}	[]	{}	AMULET_COMBO_05	\N	\N
1251663e-83a7-400a-8e1e-b619eebb353b	EQ_AMULET_C05_DIVINE	1	EQUIPMENT	AMULET	Tiên Vực Ảnh Mệnh Mệnh Phù · Đăng Tiên	\N	AMULET	DIVINE	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 1040, "LIFESTEAL_PCT": 4.9, "EVASION_RATING": 78, "ACCURACY_RATING": 78}	[]	{}	AMULET_COMBO_05	\N	\N
ebb60f60-f17c-4fd9-a54f-1d6ecae09148	EQ_AMULET_C05_RELIC	1	EQUIPMENT	AMULET	Tuế Nguyệt Ảnh Mệnh Mệnh Phù · Vĩnh Hằng	\N	AMULET	RELIC	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,RELIC,LOOSE_ITEM}	{"HP_FLAT": 1240, "LIFESTEAL_PCT": 5.8, "EVASION_RATING": 93, "ACCURACY_RATING": 93}	[]	{}	AMULET_COMBO_05	\N	\N
657edc12-3e52-4bb2-8488-d4838285ff8d	EQ_AMULET_C05_GOD	1	EQUIPMENT	AMULET	Quy Khư Ảnh Mệnh Mệnh Phù · Tận Diệt	\N	AMULET	GOD	f	\N	ACCOUNT	t	{AMULET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,AMULET_COMBO_05,GOD,LOOSE_ITEM}	{"HP_FLAT": 1460, "LIFESTEAL_PCT": 6.8, "EVASION_RATING": 110, "ACCURACY_RATING": 110}	[]	{}	AMULET_COMBO_05	\N	\N
5b5ddd13-bdae-4200-8c29-fad772e55ccb	EQ_BOOTS_C01_UNCOMMON	1	EQUIPMENT	BOOTS	Xích Thạch Truy Tinh Vân Ngoa	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"EVASION_RATING": 39, "ACCURACY_RATING": 39}	[]	{}	BOOTS_COMBO_01	\N	\N
e48a9239-9663-44a3-aeea-330b7af6fec6	EQ_BOOTS_C01_RARE	1	EQUIPMENT	BOOTS	Dạ Ảnh Truy Tinh Vân Ngoa	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,RARE,LOOSE_ITEM}	{"EVASION_RATING": 51, "ACCURACY_RATING": 51}	[]	{}	BOOTS_COMBO_01	\N	\N
092a17e1-cd01-4b4e-afef-d595701612ae	EQ_BOOTS_C01_EPIC	1	EQUIPMENT	BOOTS	Huyền Minh Truy Tinh Vân Ngoa	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,EPIC,LOOSE_ITEM}	{"EVASION_RATING": 66, "ACCURACY_RATING": 66}	[]	{}	BOOTS_COMBO_01	\N	\N
e7674283-8759-4f8d-bc3b-4cf977f69e46	EQ_BOOTS_C01_LEGENDARY	1	EQUIPMENT	BOOTS	Huyền Vũ Truy Tinh Vân Ngoa · Chi Tâm	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"EVASION_RATING": 84, "ACCURACY_RATING": 84}	[{"code": "LEGENDARY_BOOTS_C01", "description": "Né thành công giảm 1 nhịp cooldown kỹ năng kế tiếp; không lặp vô hạn."}]	{}	BOOTS_COMBO_01	\N	\N
1b9bee35-3bf2-419c-9a48-d6cbfb2c5204	EQ_BOOTS_C01_MYTHIC	1	EQUIPMENT	BOOTS	Thần Mộc Truy Tinh Vân Ngoa · Phệ Hồn	\N	BOOTS	MYTHIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,MYTHIC,LOOSE_ITEM}	{"EVASION_RATING": 105, "ACCURACY_RATING": 105}	[]	{}	BOOTS_COMBO_01	\N	\N
7e882911-303e-4a41-a97f-5ca0b1ebfc66	EQ_BOOTS_C01_ANCIENT	1	EQUIPMENT	BOOTS	Nguyên Sơ Truy Tinh Vân Ngoa · Vấn Đạo	\N	BOOTS	ANCIENT	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,ANCIENT,LOOSE_ITEM}	{"EVASION_RATING": 129, "ACCURACY_RATING": 129}	[]	{}	BOOTS_COMBO_01	\N	\N
9803f442-2c47-4d5c-9401-5a7a8741af8b	EQ_BOOTS_C01_DIVINE	1	EQUIPMENT	BOOTS	Tử Vi Truy Tinh Vân Ngoa · Trấn Thiên	\N	BOOTS	DIVINE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,DIVINE,LOOSE_ITEM}	{"EVASION_RATING": 156, "ACCURACY_RATING": 156}	[]	{}	BOOTS_COMBO_01	\N	\N
cfe9178b-0129-4e09-8253-fb72f453e939	EQ_BOOTS_C01_RELIC	1	EQUIPMENT	BOOTS	Bỉ Ngạn Truy Tinh Vân Ngoa · Vạn Kiếp	\N	BOOTS	RELIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,RELIC,LOOSE_ITEM}	{"EVASION_RATING": 186, "ACCURACY_RATING": 186}	[]	{}	BOOTS_COMBO_01	\N	\N
c6d7bf23-1390-47de-9b40-ba292d771196	EQ_BOOTS_C01_GOD	1	EQUIPMENT	BOOTS	Nhất Niệm Truy Tinh Vân Ngoa · Táng Thiên	\N	BOOTS	GOD	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_01,GOD,LOOSE_ITEM}	{"EVASION_RATING": 219, "ACCURACY_RATING": 219}	[]	{}	BOOTS_COMBO_01	\N	\N
4842a724-4a53-43d5-a3b9-6cc81957b3db	EQ_BOOTS_C02_COMMON	1	EQUIPMENT	BOOTS	Thanh Đồng Liên Ảnh Truy Phong Ngoa	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,COMMON,LOOSE_ITEM}	{"COMBO_RATING": 28, "EVASION_RATING": 30}	[]	{}	BOOTS_COMBO_02	\N	\N
27d77282-bd6c-42e2-b035-f24accbb1fa6	EQ_BOOTS_C02_UNCOMMON	1	EQUIPMENT	BOOTS	Bích Thủy Liên Ảnh Truy Phong Ngoa	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"COMBO_RATING": 36, "EVASION_RATING": 39}	[]	{}	BOOTS_COMBO_02	\N	\N
93cf58b1-671a-434b-8580-22fb5c9c614e	EQ_BOOTS_C02_RARE	1	EQUIPMENT	BOOTS	U Minh Liên Ảnh Truy Phong Ngoa	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,RARE,LOOSE_ITEM}	{"COMBO_RATING": 47, "EVASION_RATING": 51}	[]	{}	BOOTS_COMBO_02	\N	\N
f49e56ef-0290-4202-8e65-ab922bffaebd	EQ_BOOTS_C02_EPIC	1	EQUIPMENT	BOOTS	Cửu U Liên Ảnh Truy Phong Ngoa	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,EPIC,LOOSE_ITEM}	{"COMBO_RATING": 61, "EVASION_RATING": 66}	[]	{}	BOOTS_COMBO_02	\N	\N
70393ee7-f695-4dbc-9f9c-6751e0b96d6a	EQ_BOOTS_C02_LEGENDARY	1	EQUIPMENT	BOOTS	Phượng Hoàng Liên Ảnh Truy Phong Ngoa · Chi Mệnh	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"COMBO_RATING": 77, "EVASION_RATING": 84}	[{"code": "LEGENDARY_BOOTS_C02", "description": "Né thành công giảm 1 nhịp cooldown kỹ năng kế tiếp; không lặp vô hạn."}]	{}	BOOTS_COMBO_02	\N	\N
545ab368-f828-4cd4-9ad7-df4512b87dd0	EQ_BOOTS_C02_MYTHIC	1	EQUIPMENT	BOOTS	Tu La Liên Ảnh Truy Phong Ngoa · Đoạn Không	\N	BOOTS	MYTHIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,MYTHIC,LOOSE_ITEM}	{"COMBO_RATING": 96, "EVASION_RATING": 105}	[]	{}	BOOTS_COMBO_02	\N	\N
e96ef9f2-f328-4216-aef1-d8893ee1a1ec	EQ_BOOTS_C02_ANCIENT	1	EQUIPMENT	BOOTS	Thái Cổ Liên Ảnh Truy Phong Ngoa · Trấn Thế	\N	BOOTS	ANCIENT	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,ANCIENT,LOOSE_ITEM}	{"COMBO_RATING": 118, "EVASION_RATING": 129}	[]	{}	BOOTS_COMBO_02	\N	\N
e29870f0-3b3a-45d7-9baa-e838b44cdc55	EQ_BOOTS_C02_DIVINE	1	EQUIPMENT	BOOTS	Thiên Đạo Liên Ảnh Truy Phong Ngoa · Ngự Đạo	\N	BOOTS	DIVINE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,DIVINE,LOOSE_ITEM}	{"COMBO_RATING": 143, "EVASION_RATING": 156}	[]	{}	BOOTS_COMBO_02	\N	\N
c510c203-129a-4122-bf84-902a0e74b88e	EQ_BOOTS_C02_RELIC	1	EQUIPMENT	BOOTS	Luân Hồi Liên Ảnh Truy Phong Ngoa · Bất Hủ	\N	BOOTS	RELIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,RELIC,LOOSE_ITEM}	{"COMBO_RATING": 171, "EVASION_RATING": 186}	[]	{}	BOOTS_COMBO_02	\N	\N
cdd69b42-78e7-47ed-a73c-933a61602b23	EQ_BOOTS_C02_GOD	1	EQUIPMENT	BOOTS	Đại Đạo Liên Ảnh Truy Phong Ngoa · Quy Nhất	\N	BOOTS	GOD	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_02,GOD,LOOSE_ITEM}	{"COMBO_RATING": 201, "EVASION_RATING": 219}	[]	{}	BOOTS_COMBO_02	\N	\N
b36bed7b-3cfb-4b78-a46e-db08531a1b7f	EQ_BOOTS_C03_COMMON	1	EQUIPMENT	BOOTS	Hắc Thiết Hộ Thể · Vân Ngoa	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "EVASION_RATING": 30}	[]	{}	BOOTS_COMBO_03	SET_COMMON_A	Hắc Thiết Hộ Thể
a73f0628-f4aa-4751-ac0d-f8bdc33cac86	EQ_BOOTS_C03_UNCOMMON	1	EQUIPMENT	BOOTS	Linh Cốt Thanh Tâm · Vân Ngoa	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "EVASION_RATING": 39}	[]	{}	BOOTS_COMBO_03	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
f090821a-12a4-42d2-8eaa-246468cb1c7e	EQ_BOOTS_C03_RARE	1	EQUIPMENT	BOOTS	Huyền Giáp Bất Động · Vân Ngoa	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "EVASION_RATING": 51}	[]	{}	BOOTS_COMBO_03	SET_RARE_A	Huyền Giáp Bất Động
066ef545-883c-4b4b-a1b4-2fe37358c66e	EQ_BOOTS_C03_EPIC	1	EQUIPMENT	BOOTS	Cửu U Huyền Minh · Vân Ngoa	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "EVASION_RATING": 66}	[]	{}	BOOTS_COMBO_03	SET_EPIC_A	Cửu U Huyền Minh
36d8b002-4c66-4670-a5fb-3e3ab92ca81e	EQ_BOOTS_C03_LEGENDARY	1	EQUIPMENT	BOOTS	Chân Long Trấn Nhạc · Vân Ngoa	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "EVASION_RATING": 84}	[{"code": "LEGENDARY_BOOTS_C03", "description": "Né thành công giảm 1 nhịp cooldown kỹ năng kế tiếp; không lặp vô hạn."}]	{}	BOOTS_COMBO_03	SET_LEGENDARY_A	Chân Long Trấn Nhạc
4f6a64fd-616b-4366-a8a8-fee43079d8c2	EQ_BOOTS_C03_MYTHIC	1	EQUIPMENT	BOOTS	Thái Hư Vô Tướng · Vân Ngoa	\N	BOOTS	MYTHIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "EVASION_RATING": 105}	[]	{}	BOOTS_COMBO_03	SET_MYTHIC_A	Thái Hư Vô Tướng
ef4bfc8e-3fcb-45bb-a9fb-cb8e05798f83	EQ_BOOTS_C03_ANCIENT	1	EQUIPMENT	BOOTS	Hồng Hoang Bất Diệt · Vân Ngoa	\N	BOOTS	ANCIENT	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "EVASION_RATING": 129}	[]	{}	BOOTS_COMBO_03	SET_ANCIENT_A	Hồng Hoang Bất Diệt
dfba1ac9-19db-461e-b1a6-fa0063d78b09	EQ_BOOTS_C03_DIVINE	1	EQUIPMENT	BOOTS	Cửu Thiên Thánh Thể · Vân Ngoa	\N	BOOTS	DIVINE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "EVASION_RATING": 156}	[]	{}	BOOTS_COMBO_03	SET_DIVINE_A	Cửu Thiên Thánh Thể
74b859d8-94b2-43f2-8d10-64687daba42f	EQ_BOOTS_C03_RELIC	1	EQUIPMENT	BOOTS	Vạn Cổ Bất Hủ · Vân Ngoa	\N	BOOTS	RELIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "EVASION_RATING": 186}	[]	{}	BOOTS_COMBO_03	SET_RELIC_A	Vạn Cổ Bất Hủ
38ac2f8e-4250-4031-b772-e7d2c366aec2	EQ_BOOTS_C03_GOD	1	EQUIPMENT	BOOTS	Hỗn Độn Vô Cực · Vân Ngoa	\N	BOOTS	GOD	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_03,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "EVASION_RATING": 219}	[]	{}	BOOTS_COMBO_03	SET_GOD_A	Hỗn Độn Vô Cực
3fb0674b-1eb9-43f0-8d1e-a00ea39cb62b	EQ_BOOTS_C04_COMMON	1	EQUIPMENT	BOOTS	Hoàng Đồng Hộ Phong Thần Hành Ngoa	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 19, "COMBO_RATING": 14, "EVASION_RATING": 15, "ACCURACY_RATING": 15}	[]	{}	BOOTS_COMBO_04	\N	\N
15352384-a14e-4d75-8564-0b11f38b502f	EQ_BOOTS_C04_UNCOMMON	1	EQUIPMENT	BOOTS	Lam Tinh Hộ Phong Thần Hành Ngoa	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 24, "COMBO_RATING": 18, "EVASION_RATING": 20, "ACCURACY_RATING": 20}	[]	{}	BOOTS_COMBO_04	\N	\N
be5acdb7-ef33-4dd3-a2fd-42d752632a2b	EQ_BOOTS_C04_RARE	1	EQUIPMENT	BOOTS	Bích Lạc Hộ Phong Thần Hành Ngoa	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 32, "COMBO_RATING": 23, "EVASION_RATING": 26, "ACCURACY_RATING": 26}	[]	{}	BOOTS_COMBO_04	\N	\N
d5606da4-0570-4029-b01f-b77c73c4c462	EQ_BOOTS_C04_EPIC	1	EQUIPMENT	BOOTS	Xích Tiêu Hộ Phong Thần Hành Ngoa	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 41, "COMBO_RATING": 30, "EVASION_RATING": 33, "ACCURACY_RATING": 33}	[]	{}	BOOTS_COMBO_04	\N	\N
d5d77161-8aa9-44e3-a991-6da7e94ec46c	EQ_BOOTS_C04_LEGENDARY	1	EQUIPMENT	BOOTS	Bạch Hổ Hộ Phong Thần Hành Ngoa · Chi Ảnh	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 53, "COMBO_RATING": 39, "EVASION_RATING": 42, "ACCURACY_RATING": 42}	[{"code": "LEGENDARY_BOOTS_C04", "description": "Né thành công giảm 1 nhịp cooldown kỹ năng kế tiếp; không lặp vô hạn."}]	{}	BOOTS_COMBO_04	\N	\N
8b7f6bfe-5fbb-4628-b5f6-38f5aab843ed	EQ_BOOTS_C04_MYTHIC	1	EQUIPMENT	BOOTS	Tinh Hà Hộ Phong Thần Hành Ngoa · Tịch Diệt	\N	BOOTS	MYTHIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 66, "COMBO_RATING": 48, "EVASION_RATING": 53, "ACCURACY_RATING": 53}	[]	{}	BOOTS_COMBO_04	\N	\N
8ccf5fda-7449-4a90-b6ec-f589fe5c400b	EQ_BOOTS_C04_ANCIENT	1	EQUIPMENT	BOOTS	Cổ Thần Hộ Phong Thần Hành Ngoa · Khai Thiên	\N	BOOTS	ANCIENT	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 81, "COMBO_RATING": 59, "EVASION_RATING": 65, "ACCURACY_RATING": 65}	[]	{}	BOOTS_COMBO_04	\N	\N
f5a08bc6-6440-4bdf-bf7b-029aede7893d	EQ_BOOTS_C04_DIVINE	1	EQUIPMENT	BOOTS	Thái Thanh Hộ Phong Thần Hành Ngoa · Vấn Thiên	\N	BOOTS	DIVINE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 98, "COMBO_RATING": 72, "EVASION_RATING": 78, "ACCURACY_RATING": 78}	[]	{}	BOOTS_COMBO_04	\N	\N
fa6038b3-2825-4455-a8ba-e2b52db9c5cb	EQ_BOOTS_C04_RELIC	1	EQUIPMENT	BOOTS	Thái Nhất Hộ Phong Thần Hành Ngoa · Luân Hồi	\N	BOOTS	RELIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 116, "COMBO_RATING": 85, "EVASION_RATING": 93, "ACCURACY_RATING": 93}	[]	{}	BOOTS_COMBO_04	\N	\N
4f1e340b-2caf-4ac4-ac5e-2f2185c3c693	EQ_BOOTS_C04_GOD	1	EQUIPMENT	BOOTS	Vô Lượng Hộ Phong Thần Hành Ngoa · Khai Giới	\N	BOOTS	GOD	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_04,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 137, "COMBO_RATING": 100, "EVASION_RATING": 110, "ACCURACY_RATING": 110}	[]	{}	BOOTS_COMBO_04	\N	\N
358006f6-b8f7-4d2c-9fc5-8e9f525f10f9	EQ_BOOTS_C05_COMMON	1	EQUIPMENT	BOOTS	Liệp Phong · Thần Hành Ngoa	\N	BOOTS	COMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,COMMON,SET_PIECE,SET_COMMON_B}	{"CRIT_RATING": 11, "LIFESTEAL_PCT": 0.8, "EVASION_RATING": 12, "ACCURACY_RATING": 12, "TOUGHNESS_RATING": 13}	[]	{}	BOOTS_COMBO_05	SET_COMMON_B	Liệp Phong
49a23eb8-263a-42ec-b615-f961da3027e6	EQ_BOOTS_C05_UNCOMMON	1	EQUIPMENT	BOOTS	Thanh Phong Truy Ảnh · Thần Hành Ngoa	\N	BOOTS	UNCOMMON	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"CRIT_RATING": 15, "LIFESTEAL_PCT": 1.0, "EVASION_RATING": 16, "ACCURACY_RATING": 16, "TOUGHNESS_RATING": 16}	[]	{}	BOOTS_COMBO_05	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
95b4874f-31aa-4b43-9c2d-800c908c3eec	EQ_BOOTS_C05_RARE	1	EQUIPMENT	BOOTS	Huyết Sát · Thần Hành Ngoa	\N	BOOTS	RARE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,RARE,SET_PIECE,SET_RARE_B}	{"CRIT_RATING": 19, "LIFESTEAL_PCT": 1.3, "EVASION_RATING": 20, "ACCURACY_RATING": 20, "TOUGHNESS_RATING": 21}	[]	{}	BOOTS_COMBO_05	SET_RARE_B	Huyết Sát
13c3b5c9-977d-40a3-b180-b7280e7ac09b	EQ_BOOTS_C05_EPIC	1	EQUIPMENT	BOOTS	Thiên Lôi · Thần Hành Ngoa	\N	BOOTS	EPIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,EPIC,SET_PIECE,SET_EPIC_B}	{"CRIT_RATING": 25, "LIFESTEAL_PCT": 1.7, "EVASION_RATING": 26, "ACCURACY_RATING": 26, "TOUGHNESS_RATING": 28}	[]	{}	BOOTS_COMBO_05	SET_EPIC_B	Thiên Lôi
04c31121-28bb-4687-babc-464529e8a824	EQ_BOOTS_C05_LEGENDARY	1	EQUIPMENT	BOOTS	Phượng Hoàng Niết Bàn · Thần Hành Ngoa	\N	BOOTS	LEGENDARY	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1, "EVASION_RATING": 34, "ACCURACY_RATING": 34, "TOUGHNESS_RATING": 35}	[{"code": "LEGENDARY_BOOTS_C05", "description": "Né thành công giảm 1 nhịp cooldown kỹ năng kế tiếp; không lặp vô hạn."}]	{}	BOOTS_COMBO_05	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
808630f7-2e7c-4afe-8c9e-0ee91891b694	EQ_BOOTS_C05_MYTHIC	1	EQUIPMENT	BOOTS	Tu La Huyết Ngục · Thần Hành Ngoa	\N	BOOTS	MYTHIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6, "EVASION_RATING": 42, "ACCURACY_RATING": 42, "TOUGHNESS_RATING": 44}	[]	{}	BOOTS_COMBO_05	SET_MYTHIC_B	Tu La Huyết Ngục
18ffe053-f5b5-4ac1-b937-4f03919d90d8	EQ_BOOTS_C05_ANCIENT	1	EQUIPMENT	BOOTS	Thái Cổ Chiến Thiên · Thần Hành Ngoa	\N	BOOTS	ANCIENT	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"CRIT_RATING": 48, "LIFESTEAL_PCT": 3.2, "EVASION_RATING": 52, "ACCURACY_RATING": 52, "TOUGHNESS_RATING": 54}	[]	{}	BOOTS_COMBO_05	SET_ANCIENT_B	Thái Cổ Chiến Thiên
8dc49648-8ff1-48db-8c7f-0302b596682e	EQ_BOOTS_C05_DIVINE	1	EQUIPMENT	BOOTS	Thiên Đạo Vấn Kiếm · Thần Hành Ngoa	\N	BOOTS	DIVINE	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,DIVINE,SET_PIECE,SET_DIVINE_B}	{"CRIT_RATING": 58, "LIFESTEAL_PCT": 3.9, "EVASION_RATING": 62, "ACCURACY_RATING": 62, "TOUGHNESS_RATING": 66}	[]	{}	BOOTS_COMBO_05	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
2c486663-7d74-433e-a5ad-8e46adbb451a	EQ_BOOTS_C05_RELIC	1	EQUIPMENT	BOOTS	Luân Hồi Táng Tiên · Thần Hành Ngoa	\N	BOOTS	RELIC	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,RELIC,SET_PIECE,SET_RELIC_B}	{"CRIT_RATING": 69, "LIFESTEAL_PCT": 4.7, "EVASION_RATING": 74, "ACCURACY_RATING": 74, "TOUGHNESS_RATING": 78}	[]	{}	BOOTS_COMBO_05	SET_RELIC_B	Luân Hồi Táng Tiên
69c66c2c-74bc-4b9b-b627-edc4fedfdae6	EQ_BOOTS_C05_GOD	1	EQUIPMENT	BOOTS	Đại Đạo Táng Thiên · Thần Hành Ngoa	\N	BOOTS	GOD	f	\N	ACCOUNT	t	{BOOTS,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,BOOTS_COMBO_05,GOD,SET_PIECE,SET_GOD_B}	{"CRIT_RATING": 82, "LIFESTEAL_PCT": 5.5, "EVASION_RATING": 88, "ACCURACY_RATING": 88, "TOUGHNESS_RATING": 92}	[]	{}	BOOTS_COMBO_05	SET_GOD_B	Đại Đạo Táng Thiên
cc7df48b-cad0-4d8b-873a-5592b28a0ff2	EQ_RING_C01_COMMON	1	EQUIPMENT	RING	Hắc Thiết Hộ Thể · Đạo Giới	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "CRIT_RATING": 28}	[]	{}	RING_COMBO_01	SET_COMMON_A	Hắc Thiết Hộ Thể
e9d4898e-e1e0-4dda-b405-fb58305628c9	EQ_RING_C01_UNCOMMON	1	EQUIPMENT	RING	Linh Cốt Thanh Tâm · Đạo Giới	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "CRIT_RATING": 36}	[]	{}	RING_COMBO_01	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
75bf0324-6f7a-400c-8238-4526457bde7d	EQ_RING_C01_RARE	1	EQUIPMENT	RING	Huyền Giáp Bất Động · Đạo Giới	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "CRIT_RATING": 48}	[]	{}	RING_COMBO_01	SET_RARE_A	Huyền Giáp Bất Động
1621d343-c8cb-4de0-ab38-377ca2756832	EQ_RING_C01_EPIC	1	EQUIPMENT	RING	Cửu U Huyền Minh · Đạo Giới	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "CRIT_RATING": 62}	[]	{}	RING_COMBO_01	SET_EPIC_A	Cửu U Huyền Minh
b97f64f9-e627-4be6-ab56-8750731a660e	EQ_RING_C01_LEGENDARY	1	EQUIPMENT	RING	Chân Long Trấn Nhạc · Đạo Giới	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "CRIT_RATING": 78}	[{"code": "LEGENDARY_RING_C01", "description": "Crit lên mục tiêu Bleeding có thể gia hạn Bleed; tối đa 1 lần/round."}]	{}	RING_COMBO_01	SET_LEGENDARY_A	Chân Long Trấn Nhạc
3e49d9b0-2d70-4d50-a769-5fa55d6b9913	EQ_RING_C01_MYTHIC	1	EQUIPMENT	RING	Thái Hư Vô Tướng · Đạo Giới	\N	RING	MYTHIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "CRIT_RATING": 98}	[]	{}	RING_COMBO_01	SET_MYTHIC_A	Thái Hư Vô Tướng
28c2888e-be65-4027-8125-27284f1502e6	EQ_RING_C01_ANCIENT	1	EQUIPMENT	RING	Hồng Hoang Bất Diệt · Đạo Giới	\N	RING	ANCIENT	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "CRIT_RATING": 120}	[]	{}	RING_COMBO_01	SET_ANCIENT_A	Hồng Hoang Bất Diệt
b3a2146e-ff23-414f-92db-f0e10f88d619	EQ_RING_C01_DIVINE	1	EQUIPMENT	RING	Cửu Thiên Thánh Thể · Đạo Giới	\N	RING	DIVINE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "CRIT_RATING": 146}	[]	{}	RING_COMBO_01	SET_DIVINE_A	Cửu Thiên Thánh Thể
865c765c-db81-4663-b690-7ecbeb4120e1	EQ_RING_C01_RELIC	1	EQUIPMENT	RING	Vạn Cổ Bất Hủ · Đạo Giới	\N	RING	RELIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "CRIT_RATING": 174}	[]	{}	RING_COMBO_01	SET_RELIC_A	Vạn Cổ Bất Hủ
32a71458-5206-4cb1-b43f-768c0103ec26	EQ_RING_C01_GOD	1	EQUIPMENT	RING	Hỗn Độn Vô Cực · Đạo Giới	\N	RING	GOD	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_01,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "CRIT_RATING": 204}	[]	{}	RING_COMBO_01	SET_GOD_A	Hỗn Độn Vô Cực
ea928841-d5ea-4d0a-94c4-397ef59581d3	EQ_RING_C02_COMMON	1	EQUIPMENT	RING	Thiết Mộc Kim Tâm Huyết Giới	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 38, "CRIT_RATING": 28}	[]	{}	RING_COMBO_02	\N	\N
a7fd15bc-a70f-4154-8525-5cca156b5ab6	EQ_RING_C02_UNCOMMON	1	EQUIPMENT	RING	Xích Thạch Kim Tâm Huyết Giới	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 49, "CRIT_RATING": 36}	[]	{}	RING_COMBO_02	\N	\N
fa7ece4d-5df1-4505-a8a4-8544e9625943	EQ_RING_C02_RARE	1	EQUIPMENT	RING	Dạ Ảnh Kim Tâm Huyết Giới	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 64, "CRIT_RATING": 48}	[]	{}	RING_COMBO_02	\N	\N
ba1705c0-a936-49c5-ad06-6b272e7f0772	EQ_RING_C02_EPIC	1	EQUIPMENT	RING	Huyền Minh Kim Tâm Huyết Giới	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 83, "CRIT_RATING": 62}	[]	{}	RING_COMBO_02	\N	\N
a587c607-8155-4777-913b-5ad5b9bce7d7	EQ_RING_C02_LEGENDARY	1	EQUIPMENT	RING	Huyền Vũ Kim Tâm Huyết Giới · Chi Mệnh	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 105, "CRIT_RATING": 78}	[{"code": "LEGENDARY_RING_C02", "description": "Crit lên mục tiêu Bleeding có thể gia hạn Bleed; tối đa 1 lần/round."}]	{}	RING_COMBO_02	\N	\N
54aa74ab-db69-4158-9e94-1a001394d17d	EQ_RING_C02_MYTHIC	1	EQUIPMENT	RING	Thần Mộc Kim Tâm Huyết Giới · Đoạn Không	\N	RING	MYTHIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 131, "CRIT_RATING": 98}	[]	{}	RING_COMBO_02	\N	\N
527e052c-3b46-4130-84e5-2d3bf31da3b2	EQ_RING_C02_ANCIENT	1	EQUIPMENT	RING	Nguyên Sơ Kim Tâm Huyết Giới · Trấn Thế	\N	RING	ANCIENT	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 161, "CRIT_RATING": 120}	[]	{}	RING_COMBO_02	\N	\N
354334e1-7248-4059-a21b-5c95019b3f23	EQ_RING_C02_DIVINE	1	EQUIPMENT	RING	Tử Vi Kim Tâm Huyết Giới · Ngự Đạo	\N	RING	DIVINE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 195, "CRIT_RATING": 146}	[]	{}	RING_COMBO_02	\N	\N
8cb95c25-f37e-4699-a0f7-857d8ac3bdcf	EQ_RING_C02_RELIC	1	EQUIPMENT	RING	Bỉ Ngạn Kim Tâm Huyết Giới · Bất Hủ	\N	RING	RELIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 233, "CRIT_RATING": 174}	[]	{}	RING_COMBO_02	\N	\N
d20274c6-378e-4295-8c18-3723fabcdd62	EQ_RING_C02_GOD	1	EQUIPMENT	RING	Nhất Niệm Kim Tâm Huyết Giới · Quy Nhất	\N	RING	GOD	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_02,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 274, "CRIT_RATING": 204}	[]	{}	RING_COMBO_02	\N	\N
641c4ff8-5851-4b0d-9bb9-5ea59890f8d0	EQ_RING_C03_COMMON	1	EQUIPMENT	RING	Thanh Đồng Phá Quân Đạo Giới	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,COMMON,LOOSE_ITEM}	{"CRIT_RATING": 19, "COMBO_RATING": 18, "DAMAGE_BONUS_PCT": 3.0}	[]	{}	RING_COMBO_03	\N	\N
78f38cf7-2e9c-4408-8ac2-689ed6c5613e	EQ_RING_C03_UNCOMMON	1	EQUIPMENT	RING	Bích Thủy Phá Quân Đạo Giới	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"CRIT_RATING": 24, "COMBO_RATING": 24, "DAMAGE_BONUS_PCT": 3.9}	[]	{}	RING_COMBO_03	\N	\N
deee70c9-b870-4e14-81bb-b26f0e0fe6ef	EQ_RING_C03_RARE	1	EQUIPMENT	RING	U Minh Phá Quân Đạo Giới	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,RARE,LOOSE_ITEM}	{"CRIT_RATING": 32, "COMBO_RATING": 31, "DAMAGE_BONUS_PCT": 5.1}	[]	{}	RING_COMBO_03	\N	\N
4e2bf616-266e-4970-9439-b6f6ac44420a	EQ_RING_C03_EPIC	1	EQUIPMENT	RING	Cửu U Phá Quân Đạo Giới	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,EPIC,LOOSE_ITEM}	{"CRIT_RATING": 41, "COMBO_RATING": 40, "DAMAGE_BONUS_PCT": 6.6}	[]	{}	RING_COMBO_03	\N	\N
f7ec392e-64c4-4b63-b25b-a473636b45a2	EQ_RING_C03_LEGENDARY	1	EQUIPMENT	RING	Phượng Hoàng Phá Quân Đạo Giới · Chi Nộ	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"CRIT_RATING": 52, "COMBO_RATING": 51, "DAMAGE_BONUS_PCT": 8.4}	[{"code": "LEGENDARY_RING_C03", "description": "Crit lên mục tiêu Bleeding có thể gia hạn Bleed; tối đa 1 lần/round."}]	{}	RING_COMBO_03	\N	\N
6c8e0ae6-8ee4-4202-af5d-4c8383a212c7	EQ_RING_C03_MYTHIC	1	EQUIPMENT	RING	Tu La Phá Quân Đạo Giới · Vô Tướng	\N	RING	MYTHIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,MYTHIC,LOOSE_ITEM}	{"CRIT_RATING": 65, "COMBO_RATING": 64, "DAMAGE_BONUS_PCT": 10.5}	[]	{}	RING_COMBO_03	\N	\N
b072c0a3-9f64-4fd4-9014-a767d9b3484a	EQ_RING_C03_ANCIENT	1	EQUIPMENT	RING	Thái Cổ Phá Quân Đạo Giới · Hoang Cổ	\N	RING	ANCIENT	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,ANCIENT,LOOSE_ITEM}	{"CRIT_RATING": 80, "COMBO_RATING": 79, "DAMAGE_BONUS_PCT": 12.9}	[]	{}	RING_COMBO_03	\N	\N
cf1ce0e8-6b2d-42f5-9e7f-a2a73c1da982	EQ_RING_C03_DIVINE	1	EQUIPMENT	RING	Thiên Đạo Phá Quân Đạo Giới · Phong Thần	\N	RING	DIVINE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,DIVINE,LOOSE_ITEM}	{"CRIT_RATING": 97, "COMBO_RATING": 95, "DAMAGE_BONUS_PCT": 15.6}	[]	{}	RING_COMBO_03	\N	\N
db9c6a97-81f4-4120-b603-03f9175c2d9d	EQ_RING_C03_RELIC	1	EQUIPMENT	RING	Luân Hồi Phá Quân Đạo Giới · Kỷ Nguyên	\N	RING	RELIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,RELIC,LOOSE_ITEM}	{"CRIT_RATING": 116, "COMBO_RATING": 114, "DAMAGE_BONUS_PCT": 18.6}	[]	{}	RING_COMBO_03	\N	\N
2153dd5a-ae19-41a8-a642-99b517b478fe	EQ_RING_C03_GOD	1	EQUIPMENT	RING	Đại Đạo Phá Quân Đạo Giới · Vô Cực	\N	RING	GOD	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_03,GOD,LOOSE_ITEM}	{"CRIT_RATING": 136, "COMBO_RATING": 134, "DAMAGE_BONUS_PCT": 21.9}	[]	{}	RING_COMBO_03	\N	\N
62c843ef-e552-4b1b-86b9-7382a3b78263	EQ_RING_C04_COMMON	1	EQUIPMENT	RING	Bạch Thiết Ảnh Huyết Thiên Giới	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,COMMON,LOOSE_ITEM}	{"HP_FLAT": 200, "CRIT_RATING": 14, "LIFESTEAL_PCT": 0.9, "EVASION_RATING": 15}	[]	{}	RING_COMBO_04	\N	\N
be881206-747a-4491-b836-d9a867e1a2bc	EQ_RING_C04_UNCOMMON	1	EQUIPMENT	RING	Ngân Sa Ảnh Huyết Thiên Giới	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 260, "CRIT_RATING": 18, "LIFESTEAL_PCT": 1.2, "EVASION_RATING": 20}	[]	{}	RING_COMBO_04	\N	\N
d33fe5d0-ea13-437c-a651-374c38b9257e	EQ_RING_C04_RARE	1	EQUIPMENT	RING	Tử Điện Ảnh Huyết Thiên Giới	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,RARE,LOOSE_ITEM}	{"HP_FLAT": 340, "CRIT_RATING": 24, "LIFESTEAL_PCT": 1.6, "EVASION_RATING": 26}	[]	{}	RING_COMBO_04	\N	\N
7e24d956-146b-4085-a539-e78480271894	EQ_RING_C04_EPIC	1	EQUIPMENT	RING	Tinh Vẫn Ảnh Huyết Thiên Giới	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,EPIC,LOOSE_ITEM}	{"HP_FLAT": 440, "CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1, "EVASION_RATING": 33}	[]	{}	RING_COMBO_04	\N	\N
83deca27-6a6e-4682-8a9f-4be93c8c3582	EQ_RING_C04_LEGENDARY	1	EQUIPMENT	RING	Thiên Lang Ảnh Huyết Thiên Giới · Chi Ảnh	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 560, "CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6, "EVASION_RATING": 42}	[{"code": "LEGENDARY_RING_C04", "description": "Crit lên mục tiêu Bleeding có thể gia hạn Bleed; tối đa 1 lần/round."}]	{}	RING_COMBO_04	\N	\N
0a22284b-a994-4b0b-afb2-44e6c31b4cb7	EQ_RING_C04_MYTHIC	1	EQUIPMENT	RING	Hư Không Ảnh Huyết Thiên Giới · Tịch Diệt	\N	RING	MYTHIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 700, "CRIT_RATING": 49, "LIFESTEAL_PCT": 3.3, "EVASION_RATING": 53}	[]	{}	RING_COMBO_04	\N	\N
0bb0b6ca-292d-46ac-a287-91625bc39ca2	EQ_RING_C04_ANCIENT	1	EQUIPMENT	RING	Hoang Cổ Ảnh Huyết Thiên Giới · Khai Thiên	\N	RING	ANCIENT	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 860, "CRIT_RATING": 60, "LIFESTEAL_PCT": 4.0, "EVASION_RATING": 65}	[]	{}	RING_COMBO_04	\N	\N
78080148-e425-4987-be5f-bc192b00610f	EQ_RING_C04_DIVINE	1	EQUIPMENT	RING	Lăng Tiêu Ảnh Huyết Thiên Giới · Vấn Thiên	\N	RING	DIVINE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 1040, "CRIT_RATING": 73, "LIFESTEAL_PCT": 4.9, "EVASION_RATING": 78}	[]	{}	RING_COMBO_04	\N	\N
e83edc20-a318-44f7-ac03-c69853fb5fd0	EQ_RING_C04_RELIC	1	EQUIPMENT	RING	Vĩnh Hằng Ảnh Huyết Thiên Giới · Luân Hồi	\N	RING	RELIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,RELIC,LOOSE_ITEM}	{"HP_FLAT": 1240, "CRIT_RATING": 87, "LIFESTEAL_PCT": 5.8, "EVASION_RATING": 93}	[]	{}	RING_COMBO_04	\N	\N
f283f2c4-79d3-48c8-8e76-cb2549404e98	EQ_RING_C04_GOD	1	EQUIPMENT	RING	Vô Thượng Ảnh Huyết Thiên Giới · Khai Giới	\N	RING	GOD	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_04,GOD,LOOSE_ITEM}	{"HP_FLAT": 1460, "CRIT_RATING": 102, "LIFESTEAL_PCT": 6.8, "EVASION_RATING": 110}	[]	{}	RING_COMBO_04	\N	\N
0fadf38b-dae2-4079-8f64-1dddb078de62	EQ_RING_C05_COMMON	1	EQUIPMENT	RING	Liệp Phong · Sát Giới	\N	RING	COMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,COMMON,SET_PIECE,SET_COMMON_B}	{"ARMOR_FLAT": 15, "CRIT_RATING": 11, "BLEED_RATING": 12, "COMBO_RATING": 11, "ACCURACY_RATING": 12}	[]	{}	RING_COMBO_05	SET_COMMON_B	Liệp Phong
1118a3d0-c1e9-4920-8a4f-4e318e30a6a9	EQ_RING_C05_UNCOMMON	1	EQUIPMENT	RING	Thanh Phong Truy Ảnh · Sát Giới	\N	RING	UNCOMMON	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"ARMOR_FLAT": 20, "CRIT_RATING": 15, "BLEED_RATING": 15, "COMBO_RATING": 14, "ACCURACY_RATING": 16}	[]	{}	RING_COMBO_05	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
4b3f4f4c-d6c4-424a-8fd9-56e0ede9e97c	EQ_RING_C05_RARE	1	EQUIPMENT	RING	Huyết Sát · Sát Giới	\N	RING	RARE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,RARE,SET_PIECE,SET_RARE_B}	{"ARMOR_FLAT": 26, "CRIT_RATING": 19, "BLEED_RATING": 20, "COMBO_RATING": 19, "ACCURACY_RATING": 20}	[]	{}	RING_COMBO_05	SET_RARE_B	Huyết Sát
44eca26e-6909-4431-ab71-44b5e0e7c358	EQ_RING_C05_EPIC	1	EQUIPMENT	RING	Thiên Lôi · Sát Giới	\N	RING	EPIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,EPIC,SET_PIECE,SET_EPIC_B}	{"ARMOR_FLAT": 33, "CRIT_RATING": 25, "BLEED_RATING": 26, "COMBO_RATING": 24, "ACCURACY_RATING": 26}	[]	{}	RING_COMBO_05	SET_EPIC_B	Thiên Lôi
983340b5-58e9-489a-a190-66b15e7da964	EQ_RING_C05_LEGENDARY	1	EQUIPMENT	RING	Phượng Hoàng Niết Bàn · Sát Giới	\N	RING	LEGENDARY	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"ARMOR_FLAT": 42, "CRIT_RATING": 31, "BLEED_RATING": 32, "COMBO_RATING": 31, "ACCURACY_RATING": 34}	[{"code": "LEGENDARY_RING_C05", "description": "Crit lên mục tiêu Bleeding có thể gia hạn Bleed; tối đa 1 lần/round."}]	{}	RING_COMBO_05	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
9a268049-42ac-4cb3-a78f-a4dcae1d4405	EQ_RING_C05_MYTHIC	1	EQUIPMENT	RING	Tu La Huyết Ngục · Sát Giới	\N	RING	MYTHIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"ARMOR_FLAT": 53, "CRIT_RATING": 39, "BLEED_RATING": 41, "COMBO_RATING": 39, "ACCURACY_RATING": 42}	[]	{}	RING_COMBO_05	SET_MYTHIC_B	Tu La Huyết Ngục
4e569544-fbd5-4072-be83-029e87143eb7	EQ_RING_C05_ANCIENT	1	EQUIPMENT	RING	Thái Cổ Chiến Thiên · Sát Giới	\N	RING	ANCIENT	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"ARMOR_FLAT": 65, "CRIT_RATING": 48, "BLEED_RATING": 50, "COMBO_RATING": 47, "ACCURACY_RATING": 52}	[]	{}	RING_COMBO_05	SET_ANCIENT_B	Thái Cổ Chiến Thiên
5cb23efa-98da-4a85-a19f-d454546ee86c	EQ_RING_C05_DIVINE	1	EQUIPMENT	RING	Thiên Đạo Vấn Kiếm · Sát Giới	\N	RING	DIVINE	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,DIVINE,SET_PIECE,SET_DIVINE_B}	{"ARMOR_FLAT": 78, "CRIT_RATING": 58, "BLEED_RATING": 60, "COMBO_RATING": 57, "ACCURACY_RATING": 62}	[]	{}	RING_COMBO_05	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
4513c4ee-7c9c-498a-a1fe-708fd3a26830	EQ_RING_C05_RELIC	1	EQUIPMENT	RING	Luân Hồi Táng Tiên · Sát Giới	\N	RING	RELIC	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,RELIC,SET_PIECE,SET_RELIC_B}	{"ARMOR_FLAT": 93, "CRIT_RATING": 69, "BLEED_RATING": 72, "COMBO_RATING": 68, "ACCURACY_RATING": 74}	[]	{}	RING_COMBO_05	SET_RELIC_B	Luân Hồi Táng Tiên
c5ce6a8f-2f14-4d65-bd40-1ae0dcfd79ee	EQ_RING_C05_GOD	1	EQUIPMENT	RING	Đại Đạo Táng Thiên · Sát Giới	\N	RING	GOD	f	\N	ACCOUNT	t	{RING,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,RING_COMBO_05,GOD,SET_PIECE,SET_GOD_B}	{"ARMOR_FLAT": 110, "CRIT_RATING": 82, "BLEED_RATING": 85, "COMBO_RATING": 80, "ACCURACY_RATING": 88}	[]	{}	RING_COMBO_05	SET_GOD_B	Đại Đạo Táng Thiên
72d40efb-0a26-403f-8b9f-24863c1e78fb	EQ_OFF_HAND_C01_COMMON	1	EQUIPMENT	OFF_HAND	Hắc Thiết Liên Kích Hộ Phù	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,COMMON,LOOSE_ITEM}	{"COMBO_RATING": 28, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	OFF_HAND_COMBO_01	\N	\N
74542e6d-639d-4301-b947-59101c5fb750	EQ_OFF_HAND_C01_UNCOMMON	1	EQUIPMENT	OFF_HAND	Thanh Phong Liên Kích Hộ Phù	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"COMBO_RATING": 36, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	OFF_HAND_COMBO_01	\N	\N
981a922a-0c66-45f7-bffb-df17f435dcb0	EQ_OFF_HAND_C01_RARE	1	EQUIPMENT	OFF_HAND	Huyết Sát Liên Kích Hộ Phù	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,RARE,LOOSE_ITEM}	{"COMBO_RATING": 47, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	OFF_HAND_COMBO_01	\N	\N
4fdeba0a-01b4-4622-b101-3b6fa117cf04	EQ_OFF_HAND_C01_EPIC	1	EQUIPMENT	OFF_HAND	Thiên Lôi Liên Kích Hộ Phù	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,EPIC,LOOSE_ITEM}	{"COMBO_RATING": 61, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	OFF_HAND_COMBO_01	\N	\N
aaf2c552-c675-4492-b9bc-4beea7c8f689	EQ_OFF_HAND_C01_LEGENDARY	1	EQUIPMENT	OFF_HAND	Chân Long Liên Kích Hộ Phù · Chi Tâm	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"COMBO_RATING": 77, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_OFF_HAND_C01", "description": "Combo lên mục tiêu Bleeding tạo một echo hit nhỏ; echo không tự combo."}]	{}	OFF_HAND_COMBO_01	\N	\N
198e0a29-f00b-4a66-b368-601dce6679fc	EQ_OFF_HAND_C01_MYTHIC	1	EQUIPMENT	OFF_HAND	Thái Hư Liên Kích Hộ Phù · Phệ Hồn	\N	OFF_HAND	MYTHIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,MYTHIC,LOOSE_ITEM}	{"COMBO_RATING": 96, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	OFF_HAND_COMBO_01	\N	\N
b7f0ac20-080f-4814-8d8e-24895179a120	EQ_OFF_HAND_C01_ANCIENT	1	EQUIPMENT	OFF_HAND	Hồng Hoang Liên Kích Hộ Phù · Vấn Đạo	\N	OFF_HAND	ANCIENT	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,ANCIENT,LOOSE_ITEM}	{"COMBO_RATING": 118, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	OFF_HAND_COMBO_01	\N	\N
b6fe4f16-9e11-42c3-aff8-7fce3a579a51	EQ_OFF_HAND_C01_DIVINE	1	EQUIPMENT	OFF_HAND	Cửu Thiên Liên Kích Hộ Phù · Trấn Thiên	\N	OFF_HAND	DIVINE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,DIVINE,LOOSE_ITEM}	{"COMBO_RATING": 143, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	OFF_HAND_COMBO_01	\N	\N
d1cefbf4-747f-4a00-8be9-02e8aeb18102	EQ_OFF_HAND_C01_RELIC	1	EQUIPMENT	OFF_HAND	Vạn Cổ Liên Kích Hộ Phù · Vạn Kiếp	\N	OFF_HAND	RELIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,RELIC,LOOSE_ITEM}	{"COMBO_RATING": 171, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	OFF_HAND_COMBO_01	\N	\N
db77ef78-05ed-41d2-8477-ee3c69a8a3cd	EQ_OFF_HAND_C01_GOD	1	EQUIPMENT	OFF_HAND	Hỗn Độn Liên Kích Hộ Phù · Táng Thiên	\N	OFF_HAND	GOD	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_01,GOD,LOOSE_ITEM}	{"COMBO_RATING": 201, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	OFF_HAND_COMBO_01	\N	\N
72305044-169b-4af8-9039-ed99fa42e5ea	EQ_OFF_HAND_C02_COMMON	1	EQUIPMENT	OFF_HAND	Xích Đồng Phá Vọng Huyền Kính	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,COMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 30, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	OFF_HAND_COMBO_02	\N	\N
c7c46cf1-2c13-4a66-9e80-f0c48c1ebcc4	EQ_OFF_HAND_C02_UNCOMMON	1	EQUIPMENT	OFF_HAND	Tử Trúc Phá Vọng Huyền Kính	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 39, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	OFF_HAND_COMBO_02	\N	\N
310b132f-06e3-4fbf-b376-be480d9e7601	EQ_OFF_HAND_C02_RARE	1	EQUIPMENT	OFF_HAND	Huyền Băng Phá Vọng Huyền Kính	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,RARE,LOOSE_ITEM}	{"ACCURACY_RATING": 51, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	OFF_HAND_COMBO_02	\N	\N
d9ba8680-e561-45cf-bd6f-8044248d5857	EQ_OFF_HAND_C02_EPIC	1	EQUIPMENT	OFF_HAND	Hàn Nguyệt Phá Vọng Huyền Kính	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,EPIC,LOOSE_ITEM}	{"ACCURACY_RATING": 66, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	OFF_HAND_COMBO_02	\N	\N
a292d3b5-585a-4660-b9ed-a2721bef316d	EQ_OFF_HAND_C02_LEGENDARY	1	EQUIPMENT	OFF_HAND	Đế Tâm Phá Vọng Huyền Kính · Chi Mệnh	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ACCURACY_RATING": 84, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_OFF_HAND_C02", "description": "Combo lên mục tiêu Bleeding tạo một echo hit nhỏ; echo không tự combo."}]	{}	OFF_HAND_COMBO_02	\N	\N
f86667e8-ba17-4a86-b31d-071d7144ba4d	EQ_OFF_HAND_C02_MYTHIC	1	EQUIPMENT	OFF_HAND	Tịch Diệt Phá Vọng Huyền Kính · Đoạn Không	\N	OFF_HAND	MYTHIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ACCURACY_RATING": 105, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	OFF_HAND_COMBO_02	\N	\N
123579b1-eef5-4357-958c-487b7e96f5ca	EQ_OFF_HAND_C02_ANCIENT	1	EQUIPMENT	OFF_HAND	Thái Sơ Phá Vọng Huyền Kính · Trấn Thế	\N	OFF_HAND	ANCIENT	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ACCURACY_RATING": 129, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	OFF_HAND_COMBO_02	\N	\N
93a6cfc7-5590-4fd0-a542-c6548f74010e	EQ_OFF_HAND_C02_DIVINE	1	EQUIPMENT	OFF_HAND	Dao Trì Phá Vọng Huyền Kính · Ngự Đạo	\N	OFF_HAND	DIVINE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,DIVINE,LOOSE_ITEM}	{"ACCURACY_RATING": 156, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	OFF_HAND_COMBO_02	\N	\N
9d5ea971-d318-4c9a-a243-cf852fdcc892	EQ_OFF_HAND_C02_RELIC	1	EQUIPMENT	OFF_HAND	Kỷ Nguyên Phá Vọng Huyền Kính · Bất Hủ	\N	OFF_HAND	RELIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,RELIC,LOOSE_ITEM}	{"ACCURACY_RATING": 186, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	OFF_HAND_COMBO_02	\N	\N
39b3c117-de5b-4353-9347-aead571b0136	EQ_OFF_HAND_C02_GOD	1	EQUIPMENT	OFF_HAND	Vạn Giới Phá Vọng Huyền Kính · Quy Nhất	\N	OFF_HAND	GOD	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_02,GOD,LOOSE_ITEM}	{"ACCURACY_RATING": 219, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	OFF_HAND_COMBO_02	\N	\N
b850649c-841b-4e48-90a3-80f8674b80e6	EQ_OFF_HAND_C03_COMMON	1	EQUIPMENT	OFF_HAND	Thiết Mộc Huyết Tế Đạo Ấn	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,COMMON,LOOSE_ITEM}	{"BLEED_RATING": 29, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	OFF_HAND_COMBO_03	\N	\N
95805bf2-ef45-4663-ad9b-790da87cb6cc	EQ_OFF_HAND_C03_UNCOMMON	1	EQUIPMENT	OFF_HAND	Xích Thạch Huyết Tế Đạo Ấn	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"BLEED_RATING": 38, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	OFF_HAND_COMBO_03	\N	\N
d8830920-4068-4c1c-b0cb-4657ee75ae1d	EQ_OFF_HAND_C03_RARE	1	EQUIPMENT	OFF_HAND	Dạ Ảnh Huyết Tế Đạo Ấn	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,RARE,LOOSE_ITEM}	{"BLEED_RATING": 49, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	OFF_HAND_COMBO_03	\N	\N
462f368e-59f2-4996-b518-9d42003a0049	EQ_OFF_HAND_C03_EPIC	1	EQUIPMENT	OFF_HAND	Huyền Minh Huyết Tế Đạo Ấn	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,EPIC,LOOSE_ITEM}	{"BLEED_RATING": 64, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	OFF_HAND_COMBO_03	\N	\N
76491688-ed10-4870-bb5c-4d1f13fba3d1	EQ_OFF_HAND_C03_LEGENDARY	1	EQUIPMENT	OFF_HAND	Huyền Vũ Huyết Tế Đạo Ấn · Chi Nộ	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"BLEED_RATING": 81, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_OFF_HAND_C03", "description": "Combo lên mục tiêu Bleeding tạo một echo hit nhỏ; echo không tự combo."}]	{}	OFF_HAND_COMBO_03	\N	\N
f7ea40b0-a863-47c1-b4da-d82682aac373	EQ_OFF_HAND_C03_MYTHIC	1	EQUIPMENT	OFF_HAND	Thần Mộc Huyết Tế Đạo Ấn · Vô Tướng	\N	OFF_HAND	MYTHIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,MYTHIC,LOOSE_ITEM}	{"BLEED_RATING": 102, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	OFF_HAND_COMBO_03	\N	\N
ac7c651b-602c-4373-b2bc-0b28834de74c	EQ_OFF_HAND_C03_ANCIENT	1	EQUIPMENT	OFF_HAND	Nguyên Sơ Huyết Tế Đạo Ấn · Hoang Cổ	\N	OFF_HAND	ANCIENT	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,ANCIENT,LOOSE_ITEM}	{"BLEED_RATING": 125, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	OFF_HAND_COMBO_03	\N	\N
f5038b4f-8b4e-4e60-8606-07ca0f690389	EQ_OFF_HAND_C03_DIVINE	1	EQUIPMENT	OFF_HAND	Tử Vi Huyết Tế Đạo Ấn · Phong Thần	\N	OFF_HAND	DIVINE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,DIVINE,LOOSE_ITEM}	{"BLEED_RATING": 151, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	OFF_HAND_COMBO_03	\N	\N
791a98ce-c314-4e49-9d81-16f47fa442b3	EQ_OFF_HAND_C03_RELIC	1	EQUIPMENT	OFF_HAND	Bỉ Ngạn Huyết Tế Đạo Ấn · Kỷ Nguyên	\N	OFF_HAND	RELIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,RELIC,LOOSE_ITEM}	{"BLEED_RATING": 180, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	OFF_HAND_COMBO_03	\N	\N
e76e6d36-216e-4f8e-bd75-1e4af7e2ef66	EQ_OFF_HAND_C03_GOD	1	EQUIPMENT	OFF_HAND	Nhất Niệm Huyết Tế Đạo Ấn · Vô Cực	\N	OFF_HAND	GOD	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_03,GOD,LOOSE_ITEM}	{"BLEED_RATING": 212, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	OFF_HAND_COMBO_03	\N	\N
80543995-6f14-4848-b12a-623bbbb3a4d4	EQ_OFF_HAND_C04_COMMON	1	EQUIPMENT	OFF_HAND	Hắc Thiết Hộ Thể · Hộ Tâm Kính	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,COMMON,SET_PIECE,SET_COMMON_A}	{"CRIT_RATING": 14, "LIFESTEAL_PCT": 0.9, "DAMAGE_BONUS_PCT": 2.3, "TOUGHNESS_RATING": 16}	[]	{}	OFF_HAND_COMBO_04	SET_COMMON_A	Hắc Thiết Hộ Thể
71fb9ef2-df72-48ce-a905-57c2cd5dd64f	EQ_OFF_HAND_C04_UNCOMMON	1	EQUIPMENT	OFF_HAND	Linh Cốt Thanh Tâm · Hộ Tâm Kính	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"CRIT_RATING": 18, "LIFESTEAL_PCT": 1.2, "DAMAGE_BONUS_PCT": 2.9, "TOUGHNESS_RATING": 20}	[]	{}	OFF_HAND_COMBO_04	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
df360e5e-43fb-4ab8-af5f-8413569d79ec	EQ_OFF_HAND_C04_RARE	1	EQUIPMENT	OFF_HAND	Huyền Giáp Bất Động · Hộ Tâm Kính	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,RARE,SET_PIECE,SET_RARE_A}	{"CRIT_RATING": 24, "LIFESTEAL_PCT": 1.6, "DAMAGE_BONUS_PCT": 3.8, "TOUGHNESS_RATING": 27}	[]	{}	OFF_HAND_COMBO_04	SET_RARE_A	Huyền Giáp Bất Động
c7b0ab07-76f9-4dfe-a70e-0f5719a2009c	EQ_OFF_HAND_C04_EPIC	1	EQUIPMENT	OFF_HAND	Cửu U Huyền Minh · Hộ Tâm Kính	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,EPIC,SET_PIECE,SET_EPIC_A}	{"CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1, "DAMAGE_BONUS_PCT": 5.0, "TOUGHNESS_RATING": 35}	[]	{}	OFF_HAND_COMBO_04	SET_EPIC_A	Cửu U Huyền Minh
1956aa83-5b74-4536-a57d-2204bd50a89d	EQ_OFF_HAND_C04_LEGENDARY	1	EQUIPMENT	OFF_HAND	Chân Long Trấn Nhạc · Hộ Tâm Kính	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6, "DAMAGE_BONUS_PCT": 6.3, "TOUGHNESS_RATING": 44}	[{"code": "LEGENDARY_OFF_HAND_C04", "description": "Combo lên mục tiêu Bleeding tạo một echo hit nhỏ; echo không tự combo."}]	{}	OFF_HAND_COMBO_04	SET_LEGENDARY_A	Chân Long Trấn Nhạc
6db131dd-19e3-4326-814f-145fb005e5fb	EQ_OFF_HAND_C04_MYTHIC	1	EQUIPMENT	OFF_HAND	Thái Hư Vô Tướng · Hộ Tâm Kính	\N	OFF_HAND	MYTHIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"CRIT_RATING": 49, "LIFESTEAL_PCT": 3.3, "DAMAGE_BONUS_PCT": 7.9, "TOUGHNESS_RATING": 55}	[]	{}	OFF_HAND_COMBO_04	SET_MYTHIC_A	Thái Hư Vô Tướng
f9337455-bef7-479d-853f-932aabd08ad6	EQ_OFF_HAND_C04_ANCIENT	1	EQUIPMENT	OFF_HAND	Hồng Hoang Bất Diệt · Hộ Tâm Kính	\N	OFF_HAND	ANCIENT	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"CRIT_RATING": 60, "LIFESTEAL_PCT": 4.0, "DAMAGE_BONUS_PCT": 9.7, "TOUGHNESS_RATING": 68}	[]	{}	OFF_HAND_COMBO_04	SET_ANCIENT_A	Hồng Hoang Bất Diệt
8c88587c-9f28-438a-b17b-67fb8e8b9f64	EQ_OFF_HAND_C04_DIVINE	1	EQUIPMENT	OFF_HAND	Cửu Thiên Thánh Thể · Hộ Tâm Kính	\N	OFF_HAND	DIVINE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,DIVINE,SET_PIECE,SET_DIVINE_A}	{"CRIT_RATING": 73, "LIFESTEAL_PCT": 4.9, "DAMAGE_BONUS_PCT": 11.7, "TOUGHNESS_RATING": 82}	[]	{}	OFF_HAND_COMBO_04	SET_DIVINE_A	Cửu Thiên Thánh Thể
bbc03fa3-a86c-40d9-ad47-b62171ebfe65	EQ_OFF_HAND_C04_RELIC	1	EQUIPMENT	OFF_HAND	Vạn Cổ Bất Hủ · Hộ Tâm Kính	\N	OFF_HAND	RELIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,RELIC,SET_PIECE,SET_RELIC_A}	{"CRIT_RATING": 87, "LIFESTEAL_PCT": 5.8, "DAMAGE_BONUS_PCT": 14.0, "TOUGHNESS_RATING": 98}	[]	{}	OFF_HAND_COMBO_04	SET_RELIC_A	Vạn Cổ Bất Hủ
2efac6cc-5a10-46db-ac6c-be4c7a398779	EQ_OFF_HAND_C04_GOD	1	EQUIPMENT	OFF_HAND	Hỗn Độn Vô Cực · Hộ Tâm Kính	\N	OFF_HAND	GOD	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_04,GOD,SET_PIECE,SET_GOD_A}	{"CRIT_RATING": 102, "LIFESTEAL_PCT": 6.8, "DAMAGE_BONUS_PCT": 16.4, "TOUGHNESS_RATING": 115}	[]	{}	OFF_HAND_COMBO_04	SET_GOD_A	Hỗn Độn Vô Cực
2cc9f9a8-ab5d-4bc7-90c9-c6979f850305	EQ_OFF_HAND_C05_COMMON	1	EQUIPMENT	OFF_HAND	Liệp Phong · Chiến Ấn	\N	OFF_HAND	COMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,COMMON,SET_PIECE,SET_COMMON_B}	{"HP_FLAT": 160, "BLEED_RATING": 12, "COMBO_RATING": 11, "EVASION_RATING": 12, "DAMAGE_BONUS_PCT": 1.8}	[]	{}	OFF_HAND_COMBO_05	SET_COMMON_B	Liệp Phong
f17e25d8-f35e-4c2c-9ae4-772993feefb7	EQ_OFF_HAND_C05_UNCOMMON	1	EQUIPMENT	OFF_HAND	Thanh Phong Truy Ảnh · Chiến Ấn	\N	OFF_HAND	UNCOMMON	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"HP_FLAT": 208, "BLEED_RATING": 15, "COMBO_RATING": 14, "EVASION_RATING": 16, "DAMAGE_BONUS_PCT": 2.3}	[]	{}	OFF_HAND_COMBO_05	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
426de81e-327c-479b-b97d-5dd78d5b63c9	EQ_OFF_HAND_C05_RARE	1	EQUIPMENT	OFF_HAND	Huyết Sát · Chiến Ấn	\N	OFF_HAND	RARE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,RARE,SET_PIECE,SET_RARE_B}	{"HP_FLAT": 272, "BLEED_RATING": 20, "COMBO_RATING": 19, "EVASION_RATING": 20, "DAMAGE_BONUS_PCT": 3.1}	[]	{}	OFF_HAND_COMBO_05	SET_RARE_B	Huyết Sát
b62e6ef3-19ff-4752-a940-477a6bb6692f	EQ_OFF_HAND_C05_EPIC	1	EQUIPMENT	OFF_HAND	Thiên Lôi · Chiến Ấn	\N	OFF_HAND	EPIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,EPIC,SET_PIECE,SET_EPIC_B}	{"HP_FLAT": 352, "BLEED_RATING": 26, "COMBO_RATING": 24, "EVASION_RATING": 26, "DAMAGE_BONUS_PCT": 4.0}	[]	{}	OFF_HAND_COMBO_05	SET_EPIC_B	Thiên Lôi
82a311cb-d9a0-42db-96ac-21a799942a6f	EQ_OFF_HAND_C05_LEGENDARY	1	EQUIPMENT	OFF_HAND	Phượng Hoàng Niết Bàn · Chiến Ấn	\N	OFF_HAND	LEGENDARY	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"HP_FLAT": 448, "BLEED_RATING": 32, "COMBO_RATING": 31, "EVASION_RATING": 34, "DAMAGE_BONUS_PCT": 5.0}	[{"code": "LEGENDARY_OFF_HAND_C05", "description": "Combo lên mục tiêu Bleeding tạo một echo hit nhỏ; echo không tự combo."}]	{}	OFF_HAND_COMBO_05	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
252bfea2-67f3-48ad-b1e0-f0c80e83f13e	EQ_OFF_HAND_C05_MYTHIC	1	EQUIPMENT	OFF_HAND	Tu La Huyết Ngục · Chiến Ấn	\N	OFF_HAND	MYTHIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"HP_FLAT": 560, "BLEED_RATING": 41, "COMBO_RATING": 39, "EVASION_RATING": 42, "DAMAGE_BONUS_PCT": 6.3}	[]	{}	OFF_HAND_COMBO_05	SET_MYTHIC_B	Tu La Huyết Ngục
b5d81fd8-b9dc-4a4f-89ec-7f5cba53e6fa	EQ_OFF_HAND_C05_ANCIENT	1	EQUIPMENT	OFF_HAND	Thái Cổ Chiến Thiên · Chiến Ấn	\N	OFF_HAND	ANCIENT	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"HP_FLAT": 688, "BLEED_RATING": 50, "COMBO_RATING": 47, "EVASION_RATING": 52, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	OFF_HAND_COMBO_05	SET_ANCIENT_B	Thái Cổ Chiến Thiên
08fc1ec9-34bb-4c15-830c-ce4c5b0c15c5	EQ_OFF_HAND_C05_DIVINE	1	EQUIPMENT	OFF_HAND	Thiên Đạo Vấn Kiếm · Chiến Ấn	\N	OFF_HAND	DIVINE	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,DIVINE,SET_PIECE,SET_DIVINE_B}	{"HP_FLAT": 832, "BLEED_RATING": 60, "COMBO_RATING": 57, "EVASION_RATING": 62, "DAMAGE_BONUS_PCT": 9.4}	[]	{}	OFF_HAND_COMBO_05	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
b7e15e6f-64ff-4d1a-a3d6-3bc1667982c6	EQ_OFF_HAND_C05_RELIC	1	EQUIPMENT	OFF_HAND	Luân Hồi Táng Tiên · Chiến Ấn	\N	OFF_HAND	RELIC	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,RELIC,SET_PIECE,SET_RELIC_B}	{"HP_FLAT": 992, "BLEED_RATING": 72, "COMBO_RATING": 68, "EVASION_RATING": 74, "DAMAGE_BONUS_PCT": 11.2}	[]	{}	OFF_HAND_COMBO_05	SET_RELIC_B	Luân Hồi Táng Tiên
ef1d4546-ec2e-429c-a039-c5a1ce922fb4	EQ_OFF_HAND_C05_GOD	1	EQUIPMENT	OFF_HAND	Đại Đạo Táng Thiên · Chiến Ấn	\N	OFF_HAND	GOD	f	\N	ACCOUNT	t	{OFF_HAND,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,OFF_HAND_COMBO_05,GOD,SET_PIECE,SET_GOD_B}	{"HP_FLAT": 1168, "BLEED_RATING": 85, "COMBO_RATING": 80, "EVASION_RATING": 88, "DAMAGE_BONUS_PCT": 13.1}	[]	{}	OFF_HAND_COMBO_05	SET_GOD_B	Đại Đạo Táng Thiên
23d48938-4aa1-4501-92de-958fb18cd22a	EQ_WEAPON_C01_COMMON	1	EQUIPMENT	WEAPON	Mặc Thạch Liên Trảm Kiếm	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,COMMON,LOOSE_ITEM}	{"COMBO_RATING": 28, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	WEAPON_COMBO_01	\N	\N
5bb269d5-cd4e-49b3-9687-026505f2744f	EQ_WEAPON_C01_UNCOMMON	1	EQUIPMENT	WEAPON	Hàn Ngọc Liên Trảm Kiếm	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"COMBO_RATING": 36, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	WEAPON_COMBO_01	\N	\N
5a1a1d1d-d411-4e16-a943-bcd962b0f5c8	EQ_WEAPON_C01_RARE	1	EQUIPMENT	WEAPON	Kim Cương Liên Trảm Kiếm	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,RARE,LOOSE_ITEM}	{"COMBO_RATING": 47, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	WEAPON_COMBO_01	\N	\N
dde0175a-dcf3-4819-b1bf-7de193c78de8	EQ_WEAPON_C01_EPIC	1	EQUIPMENT	WEAPON	Phong Ma Liên Trảm Kiếm	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,EPIC,LOOSE_ITEM}	{"COMBO_RATING": 61, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	WEAPON_COMBO_01	\N	\N
4dba011c-d6ab-4bc6-998c-d0d55730ca27	EQ_WEAPON_C01_LEGENDARY	1	EQUIPMENT	WEAPON	Kim Ô Liên Trảm Kiếm · Chi Tâm	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"COMBO_RATING": 77, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_WEAPON_C01", "description": "Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; tối đa 1 proc/round."}]	{}	WEAPON_COMBO_01	\N	\N
5f761379-0195-4ec6-bba7-6ee3a3ef2494	EQ_WEAPON_C01_MYTHIC	1	EQUIPMENT	WEAPON	Ma La Liên Trảm Kiếm · Phệ Hồn	\N	WEAPON	MYTHIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,MYTHIC,LOOSE_ITEM}	{"COMBO_RATING": 96, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	WEAPON_COMBO_01	\N	\N
4fe89a5c-0bf7-43d2-bbf8-b8ab14cb1325	EQ_WEAPON_C01_ANCIENT	1	EQUIPMENT	WEAPON	Viễn Cổ Liên Trảm Kiếm · Vấn Đạo	\N	WEAPON	ANCIENT	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,ANCIENT,LOOSE_ITEM}	{"COMBO_RATING": 118, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	WEAPON_COMBO_01	\N	\N
5a519f11-1b94-489e-9a42-4fabb28d7774	EQ_WEAPON_C01_DIVINE	1	EQUIPMENT	WEAPON	Tiên Vực Liên Trảm Kiếm · Trấn Thiên	\N	WEAPON	DIVINE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,DIVINE,LOOSE_ITEM}	{"COMBO_RATING": 143, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	WEAPON_COMBO_01	\N	\N
66ab7f1b-7ede-4e15-92e6-dba6a97ed0a6	EQ_WEAPON_C01_RELIC	1	EQUIPMENT	WEAPON	Tuế Nguyệt Liên Trảm Kiếm · Vạn Kiếp	\N	WEAPON	RELIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,RELIC,LOOSE_ITEM}	{"COMBO_RATING": 171, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	WEAPON_COMBO_01	\N	\N
ed6d5638-956d-47a7-a52a-63ec12611a08	EQ_WEAPON_C01_GOD	1	EQUIPMENT	WEAPON	Quy Khư Liên Trảm Kiếm · Táng Thiên	\N	WEAPON	GOD	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_01,GOD,LOOSE_ITEM}	{"COMBO_RATING": 201, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	WEAPON_COMBO_01	\N	\N
6f3ae4b5-54df-4526-97b2-8d84c3283b40	EQ_WEAPON_C02_COMMON	1	EQUIPMENT	WEAPON	Hắc Thiết Phá Vọng Đao	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,COMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 30, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	WEAPON_COMBO_02	\N	\N
2ddb146f-dbe9-4a74-be67-00b5b6c43a34	EQ_WEAPON_C02_UNCOMMON	1	EQUIPMENT	WEAPON	Thanh Phong Phá Vọng Đao	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 39, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	WEAPON_COMBO_02	\N	\N
9dd6cbde-7f13-46f1-a621-0c87accbe9aa	EQ_WEAPON_C02_RARE	1	EQUIPMENT	WEAPON	Huyết Sát Phá Vọng Đao	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,RARE,LOOSE_ITEM}	{"ACCURACY_RATING": 51, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	WEAPON_COMBO_02	\N	\N
3f1238e7-c6d7-4613-a421-71157ccca2c8	EQ_WEAPON_C02_EPIC	1	EQUIPMENT	WEAPON	Thiên Lôi Phá Vọng Đao	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,EPIC,LOOSE_ITEM}	{"ACCURACY_RATING": 66, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	WEAPON_COMBO_02	\N	\N
87e2eeec-d480-4ee7-880b-f3b83bfa3957	EQ_WEAPON_C02_LEGENDARY	1	EQUIPMENT	WEAPON	Chân Long Phá Vọng Đao · Chi Mệnh	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ACCURACY_RATING": 84, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_WEAPON_C02", "description": "Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; tối đa 1 proc/round."}]	{}	WEAPON_COMBO_02	\N	\N
c4149f34-e236-417a-8513-35c00aaec7c9	EQ_WEAPON_C02_MYTHIC	1	EQUIPMENT	WEAPON	Thái Hư Phá Vọng Đao · Đoạn Không	\N	WEAPON	MYTHIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ACCURACY_RATING": 105, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	WEAPON_COMBO_02	\N	\N
8ec82da9-b5d6-4413-b478-a917287e4b9f	EQ_WEAPON_C02_ANCIENT	1	EQUIPMENT	WEAPON	Hồng Hoang Phá Vọng Đao · Trấn Thế	\N	WEAPON	ANCIENT	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ACCURACY_RATING": 129, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	WEAPON_COMBO_02	\N	\N
4844f1af-75b9-41fa-ba9a-f0cf56a5b88c	EQ_WEAPON_C02_DIVINE	1	EQUIPMENT	WEAPON	Cửu Thiên Phá Vọng Đao · Ngự Đạo	\N	WEAPON	DIVINE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,DIVINE,LOOSE_ITEM}	{"ACCURACY_RATING": 156, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	WEAPON_COMBO_02	\N	\N
6dc87872-8972-42d6-b86b-caea7029297d	EQ_WEAPON_C02_RELIC	1	EQUIPMENT	WEAPON	Vạn Cổ Phá Vọng Đao · Bất Hủ	\N	WEAPON	RELIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,RELIC,LOOSE_ITEM}	{"ACCURACY_RATING": 186, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	WEAPON_COMBO_02	\N	\N
c3f71889-2059-49ab-89d5-de9b2f212c09	EQ_WEAPON_C02_GOD	1	EQUIPMENT	WEAPON	Hỗn Độn Phá Vọng Đao · Quy Nhất	\N	WEAPON	GOD	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_02,GOD,LOOSE_ITEM}	{"ACCURACY_RATING": 219, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	WEAPON_COMBO_02	\N	\N
b75d07ef-6024-4cbc-8f66-190db0bf1a8f	EQ_WEAPON_C03_COMMON	1	EQUIPMENT	WEAPON	Xích Đồng Huyết Nhận Thương	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,COMMON,LOOSE_ITEM}	{"BLEED_RATING": 29, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	WEAPON_COMBO_03	\N	\N
e23d4212-6868-4958-8663-e37e8ffa7651	EQ_WEAPON_C03_UNCOMMON	1	EQUIPMENT	WEAPON	Tử Trúc Huyết Nhận Thương	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"BLEED_RATING": 38, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	WEAPON_COMBO_03	\N	\N
a1224190-bd8e-4209-9e98-da383afa2551	EQ_WEAPON_C03_RARE	1	EQUIPMENT	WEAPON	Huyền Băng Huyết Nhận Thương	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,RARE,LOOSE_ITEM}	{"BLEED_RATING": 49, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	WEAPON_COMBO_03	\N	\N
b9842682-8ca4-484f-9c7c-4d0593403d3e	EQ_WEAPON_C03_EPIC	1	EQUIPMENT	WEAPON	Hàn Nguyệt Huyết Nhận Thương	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,EPIC,LOOSE_ITEM}	{"BLEED_RATING": 64, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	WEAPON_COMBO_03	\N	\N
16a0c8c8-582a-406a-b695-2c84552bc91a	EQ_WEAPON_C03_LEGENDARY	1	EQUIPMENT	WEAPON	Đế Tâm Huyết Nhận Thương · Chi Nộ	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"BLEED_RATING": 81, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_WEAPON_C03", "description": "Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; tối đa 1 proc/round."}]	{}	WEAPON_COMBO_03	\N	\N
6f1479db-b1ef-490c-8ebc-890027ecb466	EQ_WEAPON_C03_MYTHIC	1	EQUIPMENT	WEAPON	Tịch Diệt Huyết Nhận Thương · Vô Tướng	\N	WEAPON	MYTHIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,MYTHIC,LOOSE_ITEM}	{"BLEED_RATING": 102, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	WEAPON_COMBO_03	\N	\N
f6cb31c8-38d3-4014-b696-21bde253e57f	EQ_WEAPON_C03_ANCIENT	1	EQUIPMENT	WEAPON	Thái Sơ Huyết Nhận Thương · Hoang Cổ	\N	WEAPON	ANCIENT	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,ANCIENT,LOOSE_ITEM}	{"BLEED_RATING": 125, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	WEAPON_COMBO_03	\N	\N
0d98cf29-a923-425f-b16e-31e6c9c40c78	EQ_WEAPON_C03_DIVINE	1	EQUIPMENT	WEAPON	Dao Trì Huyết Nhận Thương · Phong Thần	\N	WEAPON	DIVINE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,DIVINE,LOOSE_ITEM}	{"BLEED_RATING": 151, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	WEAPON_COMBO_03	\N	\N
d70f0f5c-0a44-42e1-92e3-ab9de8d65aed	EQ_WEAPON_C03_RELIC	1	EQUIPMENT	WEAPON	Kỷ Nguyên Huyết Nhận Thương · Kỷ Nguyên	\N	WEAPON	RELIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,RELIC,LOOSE_ITEM}	{"BLEED_RATING": 180, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	WEAPON_COMBO_03	\N	\N
175c982f-f9ee-480f-98de-4e5a2717b7bd	EQ_WEAPON_C03_GOD	1	EQUIPMENT	WEAPON	Vạn Giới Huyết Nhận Thương · Vô Cực	\N	WEAPON	GOD	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_03,GOD,LOOSE_ITEM}	{"BLEED_RATING": 212, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	WEAPON_COMBO_03	\N	\N
ce8ad0e2-29cf-4694-9eb2-b089ca08e0fb	EQ_WEAPON_C04_COMMON	1	EQUIPMENT	WEAPON	Hắc Thiết Hộ Thể · Trấn Nhạc Kiếm	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,COMMON,SET_PIECE,SET_COMMON_A}	{"CRIT_RATING": 14, "LIFESTEAL_PCT": 0.9, "DAMAGE_BONUS_PCT": 2.3, "TOUGHNESS_RATING": 16}	[]	{}	WEAPON_COMBO_04	SET_COMMON_A	Hắc Thiết Hộ Thể
1e8444b2-b9ca-4b9b-8a88-140088b0d39e	EQ_WEAPON_C04_UNCOMMON	1	EQUIPMENT	WEAPON	Linh Cốt Thanh Tâm · Trấn Nhạc Kiếm	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"CRIT_RATING": 18, "LIFESTEAL_PCT": 1.2, "DAMAGE_BONUS_PCT": 2.9, "TOUGHNESS_RATING": 20}	[]	{}	WEAPON_COMBO_04	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
7e24c983-2b80-4e79-bbce-1b0b62230654	EQ_WEAPON_C04_RARE	1	EQUIPMENT	WEAPON	Huyền Giáp Bất Động · Trấn Nhạc Kiếm	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,RARE,SET_PIECE,SET_RARE_A}	{"CRIT_RATING": 24, "LIFESTEAL_PCT": 1.6, "DAMAGE_BONUS_PCT": 3.8, "TOUGHNESS_RATING": 27}	[]	{}	WEAPON_COMBO_04	SET_RARE_A	Huyền Giáp Bất Động
5618f2be-c4dc-4262-ac55-b02f42cd65a7	EQ_WEAPON_C04_EPIC	1	EQUIPMENT	WEAPON	Cửu U Huyền Minh · Trấn Nhạc Kiếm	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,EPIC,SET_PIECE,SET_EPIC_A}	{"CRIT_RATING": 31, "LIFESTEAL_PCT": 2.1, "DAMAGE_BONUS_PCT": 5.0, "TOUGHNESS_RATING": 35}	[]	{}	WEAPON_COMBO_04	SET_EPIC_A	Cửu U Huyền Minh
0de2b0a9-1aa8-4282-8d3c-e69b944a6145	EQ_WEAPON_C04_LEGENDARY	1	EQUIPMENT	WEAPON	Chân Long Trấn Nhạc · Trấn Nhạc Kiếm	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"CRIT_RATING": 39, "LIFESTEAL_PCT": 2.6, "DAMAGE_BONUS_PCT": 6.3, "TOUGHNESS_RATING": 44}	[{"code": "LEGENDARY_WEAPON_C04", "description": "Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; tối đa 1 proc/round."}]	{}	WEAPON_COMBO_04	SET_LEGENDARY_A	Chân Long Trấn Nhạc
9acd9d7f-8926-4066-b7d2-6470cccaa6e1	EQ_WEAPON_C04_MYTHIC	1	EQUIPMENT	WEAPON	Thái Hư Vô Tướng · Trấn Nhạc Kiếm	\N	WEAPON	MYTHIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"CRIT_RATING": 49, "LIFESTEAL_PCT": 3.3, "DAMAGE_BONUS_PCT": 7.9, "TOUGHNESS_RATING": 55}	[]	{}	WEAPON_COMBO_04	SET_MYTHIC_A	Thái Hư Vô Tướng
1837b13d-b917-445b-b05b-6dc152a77aa0	EQ_WEAPON_C04_ANCIENT	1	EQUIPMENT	WEAPON	Hồng Hoang Bất Diệt · Trấn Nhạc Kiếm	\N	WEAPON	ANCIENT	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"CRIT_RATING": 60, "LIFESTEAL_PCT": 4.0, "DAMAGE_BONUS_PCT": 9.7, "TOUGHNESS_RATING": 68}	[]	{}	WEAPON_COMBO_04	SET_ANCIENT_A	Hồng Hoang Bất Diệt
2a4a4e79-5141-45a3-99b9-85219282508c	EQ_WEAPON_C04_DIVINE	1	EQUIPMENT	WEAPON	Cửu Thiên Thánh Thể · Trấn Nhạc Kiếm	\N	WEAPON	DIVINE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,DIVINE,SET_PIECE,SET_DIVINE_A}	{"CRIT_RATING": 73, "LIFESTEAL_PCT": 4.9, "DAMAGE_BONUS_PCT": 11.7, "TOUGHNESS_RATING": 82}	[]	{}	WEAPON_COMBO_04	SET_DIVINE_A	Cửu Thiên Thánh Thể
3424519b-4d19-4e13-b95b-f61442ce09be	EQ_WEAPON_C04_RELIC	1	EQUIPMENT	WEAPON	Vạn Cổ Bất Hủ · Trấn Nhạc Kiếm	\N	WEAPON	RELIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,RELIC,SET_PIECE,SET_RELIC_A}	{"CRIT_RATING": 87, "LIFESTEAL_PCT": 5.8, "DAMAGE_BONUS_PCT": 14.0, "TOUGHNESS_RATING": 98}	[]	{}	WEAPON_COMBO_04	SET_RELIC_A	Vạn Cổ Bất Hủ
386d4698-e2f2-4265-a71b-912407d503fd	EQ_WEAPON_C04_GOD	1	EQUIPMENT	WEAPON	Hỗn Độn Vô Cực · Trấn Nhạc Kiếm	\N	WEAPON	GOD	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_04,GOD,SET_PIECE,SET_GOD_A}	{"CRIT_RATING": 102, "LIFESTEAL_PCT": 6.8, "DAMAGE_BONUS_PCT": 16.4, "TOUGHNESS_RATING": 115}	[]	{}	WEAPON_COMBO_04	SET_GOD_A	Hỗn Độn Vô Cực
3fe50bd1-4386-4877-88c2-b746d9ea8662	EQ_WEAPON_C05_COMMON	1	EQUIPMENT	WEAPON	Liệp Phong · Táng Thiên Nhận	\N	WEAPON	COMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,COMMON,SET_PIECE,SET_COMMON_B}	{"HP_FLAT": 160, "BLEED_RATING": 12, "COMBO_RATING": 11, "EVASION_RATING": 12, "DAMAGE_BONUS_PCT": 1.8}	[]	{}	WEAPON_COMBO_05	SET_COMMON_B	Liệp Phong
085d7565-42e1-4f89-bc93-990d7f26fbe3	EQ_WEAPON_C05_UNCOMMON	1	EQUIPMENT	WEAPON	Thanh Phong Truy Ảnh · Táng Thiên Nhận	\N	WEAPON	UNCOMMON	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"HP_FLAT": 208, "BLEED_RATING": 15, "COMBO_RATING": 14, "EVASION_RATING": 16, "DAMAGE_BONUS_PCT": 2.3}	[]	{}	WEAPON_COMBO_05	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
0dbab68d-96a9-40e6-a611-719af4678755	EQ_WEAPON_C05_RARE	1	EQUIPMENT	WEAPON	Huyết Sát · Táng Thiên Nhận	\N	WEAPON	RARE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,RARE,SET_PIECE,SET_RARE_B}	{"HP_FLAT": 272, "BLEED_RATING": 20, "COMBO_RATING": 19, "EVASION_RATING": 20, "DAMAGE_BONUS_PCT": 3.1}	[]	{}	WEAPON_COMBO_05	SET_RARE_B	Huyết Sát
a38904b5-463a-435b-81f3-770189e97682	EQ_WEAPON_C05_EPIC	1	EQUIPMENT	WEAPON	Thiên Lôi · Táng Thiên Nhận	\N	WEAPON	EPIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,EPIC,SET_PIECE,SET_EPIC_B}	{"HP_FLAT": 352, "BLEED_RATING": 26, "COMBO_RATING": 24, "EVASION_RATING": 26, "DAMAGE_BONUS_PCT": 4.0}	[]	{}	WEAPON_COMBO_05	SET_EPIC_B	Thiên Lôi
d6e44a6a-c45b-464d-ba7b-22d212ae9e79	EQ_WEAPON_C05_LEGENDARY	1	EQUIPMENT	WEAPON	Phượng Hoàng Niết Bàn · Táng Thiên Nhận	\N	WEAPON	LEGENDARY	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"HP_FLAT": 448, "BLEED_RATING": 32, "COMBO_RATING": 31, "EVASION_RATING": 34, "DAMAGE_BONUS_PCT": 5.0}	[{"code": "LEGENDARY_WEAPON_C05", "description": "Crit lên mục tiêu Bleeding tiêu 1 stack để tạo Soul Strike; tối đa 1 proc/round."}]	{}	WEAPON_COMBO_05	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
e13af46f-63e8-4ec0-8cd2-f2e6b21cfeb2	EQ_WEAPON_C05_MYTHIC	1	EQUIPMENT	WEAPON	Tu La Huyết Ngục · Táng Thiên Nhận	\N	WEAPON	MYTHIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"HP_FLAT": 560, "BLEED_RATING": 41, "COMBO_RATING": 39, "EVASION_RATING": 42, "DAMAGE_BONUS_PCT": 6.3}	[]	{}	WEAPON_COMBO_05	SET_MYTHIC_B	Tu La Huyết Ngục
5fe7e657-2b5d-49ef-89f4-b96e1162b2dd	EQ_WEAPON_C05_ANCIENT	1	EQUIPMENT	WEAPON	Thái Cổ Chiến Thiên · Táng Thiên Nhận	\N	WEAPON	ANCIENT	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"HP_FLAT": 688, "BLEED_RATING": 50, "COMBO_RATING": 47, "EVASION_RATING": 52, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	WEAPON_COMBO_05	SET_ANCIENT_B	Thái Cổ Chiến Thiên
8a7d2be2-0fe5-47bb-b16f-381b00f26d45	EQ_WEAPON_C05_DIVINE	1	EQUIPMENT	WEAPON	Thiên Đạo Vấn Kiếm · Táng Thiên Nhận	\N	WEAPON	DIVINE	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,DIVINE,SET_PIECE,SET_DIVINE_B}	{"HP_FLAT": 832, "BLEED_RATING": 60, "COMBO_RATING": 57, "EVASION_RATING": 62, "DAMAGE_BONUS_PCT": 9.4}	[]	{}	WEAPON_COMBO_05	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
895aa124-998d-4548-a699-1894f7ddbac3	EQ_WEAPON_C05_RELIC	1	EQUIPMENT	WEAPON	Luân Hồi Táng Tiên · Táng Thiên Nhận	\N	WEAPON	RELIC	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,RELIC,SET_PIECE,SET_RELIC_B}	{"HP_FLAT": 992, "BLEED_RATING": 72, "COMBO_RATING": 68, "EVASION_RATING": 74, "DAMAGE_BONUS_PCT": 11.2}	[]	{}	WEAPON_COMBO_05	SET_RELIC_B	Luân Hồi Táng Tiên
a8e60d25-e98c-47f1-aea0-be3f0f80b0da	EQ_WEAPON_C05_GOD	1	EQUIPMENT	WEAPON	Đại Đạo Táng Thiên · Táng Thiên Nhận	\N	WEAPON	GOD	f	\N	ACCOUNT	t	{WEAPON,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,WEAPON_COMBO_05,GOD,SET_PIECE,SET_GOD_B}	{"HP_FLAT": 1168, "BLEED_RATING": 85, "COMBO_RATING": 80, "EVASION_RATING": 88, "DAMAGE_BONUS_PCT": 13.1}	[]	{}	WEAPON_COMBO_05	SET_GOD_B	Đại Đạo Táng Thiên
06d8063e-aef0-4136-9be3-2af18ead61ec	EQ_PET_C01_COMMON	1	EQUIPMENT	PET	Ô Kim Chiến Huyết Linh Hồ	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,COMMON,LOOSE_ITEM}	{"HP_FLAT": 400, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	PET_COMBO_01	\N	\N
f035e257-4b2c-454d-9caf-3f0fe86ba165	EQ_PET_C01_UNCOMMON	1	EQUIPMENT	PET	Linh Mộc Chiến Huyết Linh Hồ	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,UNCOMMON,LOOSE_ITEM}	{"HP_FLAT": 520, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	PET_COMBO_01	\N	\N
dc006e42-3e8b-40f4-939a-6feb2e76f253	EQ_PET_C01_EPIC	1	EQUIPMENT	PET	Liệt Dương Chiến Huyết Linh Hồ	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,EPIC,LOOSE_ITEM}	{"HP_FLAT": 880, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	PET_COMBO_01	\N	\N
5cbb0007-81cd-4097-8d63-d34f9d1be35f	EQ_PET_C01_LEGENDARY	1	EQUIPMENT	PET	Kỳ Lân Chiến Huyết Linh Hồ · Chi Tâm	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,LEGENDARY,LOOSE_ITEM}	{"HP_FLAT": 1120, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_PET_C01", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_01	\N	\N
a2331096-e2ce-421e-84f6-9db0c204fc71	EQ_PET_C01_MYTHIC	1	EQUIPMENT	PET	Vô Cực Chiến Huyết Linh Hồ · Phệ Hồn	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,MYTHIC,LOOSE_ITEM}	{"HP_FLAT": 1400, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	PET_COMBO_01	\N	\N
ebebeb02-39ff-427f-a15b-8663abc98526	EQ_PET_C01_ANCIENT	1	EQUIPMENT	PET	Khai Thiên Chiến Huyết Linh Hồ · Vấn Đạo	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,ANCIENT,LOOSE_ITEM}	{"HP_FLAT": 1720, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	PET_COMBO_01	\N	\N
39396d56-cba4-4efe-a50e-7d54900e208a	EQ_PET_C01_DIVINE	1	EQUIPMENT	PET	Thần Tiêu Chiến Huyết Linh Hồ · Trấn Thiên	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,DIVINE,LOOSE_ITEM}	{"HP_FLAT": 2080, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	PET_COMBO_01	\N	\N
1ce12e8d-795a-4c38-9fec-80f10c821054	EQ_PET_C01_RELIC	1	EQUIPMENT	PET	Bất Hủ Chiến Huyết Linh Hồ · Vạn Kiếp	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,RELIC,LOOSE_ITEM}	{"HP_FLAT": 2480, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	PET_COMBO_01	\N	\N
a29d94dd-ad81-447d-9427-f6c90f837c42	EQ_PET_C01_GOD	1	EQUIPMENT	PET	Chư Thiên Chiến Huyết Linh Hồ · Táng Thiên	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_01,GOD,LOOSE_ITEM}	{"HP_FLAT": 2920, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	PET_COMBO_01	\N	\N
03220029-dd20-4d21-a4b9-ae2856a445fc	EQ_PET_C02_COMMON	1	EQUIPMENT	PET	Mặc Thạch Thiên Nhãn Huyền Quy	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,COMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 30, "DAMAGE_BONUS_PCT": 4.5}	[]	{}	PET_COMBO_02	\N	\N
421ec058-196a-4403-8cd5-f9ac9197ef55	EQ_PET_C02_UNCOMMON	1	EQUIPMENT	PET	Hàn Ngọc Thiên Nhãn Huyền Quy	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,UNCOMMON,LOOSE_ITEM}	{"ACCURACY_RATING": 39, "DAMAGE_BONUS_PCT": 5.9}	[]	{}	PET_COMBO_02	\N	\N
d2e454f1-8e45-4ff9-8112-f3e3d56b822d	EQ_PET_C02_RARE	1	EQUIPMENT	PET	Kim Cương Thiên Nhãn Huyền Quy	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,RARE,LOOSE_ITEM}	{"ACCURACY_RATING": 51, "DAMAGE_BONUS_PCT": 7.7}	[]	{}	PET_COMBO_02	\N	\N
5a0f7e51-4f9c-4317-a827-1ae1d6e0e856	EQ_PET_C02_EPIC	1	EQUIPMENT	PET	Phong Ma Thiên Nhãn Huyền Quy	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,EPIC,LOOSE_ITEM}	{"ACCURACY_RATING": 66, "DAMAGE_BONUS_PCT": 9.9}	[]	{}	PET_COMBO_02	\N	\N
8d0e5b43-54b0-4ed8-9a6e-32f19bedf9c3	EQ_PET_C02_LEGENDARY	1	EQUIPMENT	PET	Kim Ô Thiên Nhãn Huyền Quy · Chi Mệnh	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,LEGENDARY,LOOSE_ITEM}	{"ACCURACY_RATING": 84, "DAMAGE_BONUS_PCT": 12.6}	[{"code": "LEGENDARY_PET_C02", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_02	\N	\N
b6323db4-a37a-4625-abb4-44807c2f7eec	EQ_PET_C02_MYTHIC	1	EQUIPMENT	PET	Ma La Thiên Nhãn Huyền Quy · Đoạn Không	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,MYTHIC,LOOSE_ITEM}	{"ACCURACY_RATING": 105, "DAMAGE_BONUS_PCT": 15.8}	[]	{}	PET_COMBO_02	\N	\N
e9c8ab77-5550-49f7-a952-b04a3275e5dc	EQ_PET_C02_ANCIENT	1	EQUIPMENT	PET	Viễn Cổ Thiên Nhãn Huyền Quy · Trấn Thế	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,ANCIENT,LOOSE_ITEM}	{"ACCURACY_RATING": 129, "DAMAGE_BONUS_PCT": 19.4}	[]	{}	PET_COMBO_02	\N	\N
a79e5cb2-5fcb-40c9-ad1b-866fab957827	EQ_PET_C02_DIVINE	1	EQUIPMENT	PET	Tiên Vực Thiên Nhãn Huyền Quy · Ngự Đạo	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,DIVINE,LOOSE_ITEM}	{"ACCURACY_RATING": 156, "DAMAGE_BONUS_PCT": 23.4}	[]	{}	PET_COMBO_02	\N	\N
b4c488c9-de31-4991-8ba3-d43234a153b5	EQ_PET_C02_RELIC	1	EQUIPMENT	PET	Tuế Nguyệt Thiên Nhãn Huyền Quy · Bất Hủ	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,RELIC,LOOSE_ITEM}	{"ACCURACY_RATING": 186, "DAMAGE_BONUS_PCT": 27.9}	[]	{}	PET_COMBO_02	\N	\N
f418bd58-9889-4040-b195-cd12184b4452	EQ_PET_C02_GOD	1	EQUIPMENT	PET	Quy Khư Thiên Nhãn Huyền Quy · Quy Nhất	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_02,GOD,LOOSE_ITEM}	{"ACCURACY_RATING": 219, "DAMAGE_BONUS_PCT": 32.9}	[]	{}	PET_COMBO_02	\N	\N
fcbb32f8-120b-4db8-a6af-3aacf4902bb2	EQ_PET_C03_COMMON	1	EQUIPMENT	PET	Hắc Thiết Hộ Chủ Huyết Lang	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,COMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 38, "LIFESTEAL_PCT": 1.9}	[]	{}	PET_COMBO_03	\N	\N
951fedde-189b-476b-90ac-480027d8b199	EQ_PET_C03_UNCOMMON	1	EQUIPMENT	PET	Thanh Phong Hộ Chủ Huyết Lang	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,UNCOMMON,LOOSE_ITEM}	{"ARMOR_FLAT": 49, "LIFESTEAL_PCT": 2.4}	[]	{}	PET_COMBO_03	\N	\N
6ff1d78c-ba48-4df0-a6fa-7c8f216883a7	EQ_PET_C03_RARE	1	EQUIPMENT	PET	Huyết Sát Hộ Chủ Huyết Lang	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,RARE,LOOSE_ITEM}	{"ARMOR_FLAT": 64, "LIFESTEAL_PCT": 3.2}	[]	{}	PET_COMBO_03	\N	\N
649e498a-76d2-46d8-bf98-a73a0236ece3	EQ_PET_C03_EPIC	1	EQUIPMENT	PET	Thiên Lôi Hộ Chủ Huyết Lang	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,EPIC,LOOSE_ITEM}	{"ARMOR_FLAT": 83, "LIFESTEAL_PCT": 4.1}	[]	{}	PET_COMBO_03	\N	\N
40c19267-b416-48c9-8c01-2987875be495	EQ_PET_C03_LEGENDARY	1	EQUIPMENT	PET	Chân Long Hộ Chủ Huyết Lang · Chi Nộ	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,LEGENDARY,LOOSE_ITEM}	{"ARMOR_FLAT": 105, "LIFESTEAL_PCT": 5.3}	[{"code": "LEGENDARY_PET_C03", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_03	\N	\N
169e3e2d-c7e8-4127-9c81-c1c6a8767f8f	EQ_PET_C03_MYTHIC	1	EQUIPMENT	PET	Thái Hư Hộ Chủ Huyết Lang · Vô Tướng	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,MYTHIC,LOOSE_ITEM}	{"ARMOR_FLAT": 131, "LIFESTEAL_PCT": 6.6}	[]	{}	PET_COMBO_03	\N	\N
aad5db19-a768-4193-ba68-fbd54ec7eecb	EQ_PET_C03_ANCIENT	1	EQUIPMENT	PET	Hồng Hoang Hộ Chủ Huyết Lang · Hoang Cổ	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,ANCIENT,LOOSE_ITEM}	{"ARMOR_FLAT": 161, "LIFESTEAL_PCT": 8.1}	[]	{}	PET_COMBO_03	\N	\N
0e90b59b-eeef-4af5-b7b3-a6562033b036	EQ_PET_C03_DIVINE	1	EQUIPMENT	PET	Cửu Thiên Hộ Chủ Huyết Lang · Phong Thần	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,DIVINE,LOOSE_ITEM}	{"ARMOR_FLAT": 195, "LIFESTEAL_PCT": 9.8}	[]	{}	PET_COMBO_03	\N	\N
153991e0-eb6b-404f-8a59-742a77c757ca	EQ_PET_C03_RELIC	1	EQUIPMENT	PET	Vạn Cổ Hộ Chủ Huyết Lang · Kỷ Nguyên	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,RELIC,LOOSE_ITEM}	{"ARMOR_FLAT": 233, "LIFESTEAL_PCT": 11.6}	[]	{}	PET_COMBO_03	\N	\N
099d9a50-531a-4d6f-964f-c2ec37ce21b1	EQ_PET_C03_GOD	1	EQUIPMENT	PET	Hỗn Độn Hộ Chủ Huyết Lang · Vô Cực	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_03,GOD,LOOSE_ITEM}	{"ARMOR_FLAT": 274, "LIFESTEAL_PCT": 13.7}	[]	{}	PET_COMBO_03	\N	\N
061b5687-a22a-491c-a8cc-48a2ec1354ee	EQ_PET_C04_COMMON	1	EQUIPMENT	PET	Xích Đồng Liên Kích Lôi Ưng	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,COMMON,LOOSE_ITEM}	{"COMBO_RATING": 28, "ACCURACY_RATING": 30}	[]	{}	PET_COMBO_04	\N	\N
2bb46fc8-e49d-42c5-a6d8-837ccd65fee8	EQ_PET_C04_UNCOMMON	1	EQUIPMENT	PET	Tử Trúc Liên Kích Lôi Ưng	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,UNCOMMON,LOOSE_ITEM}	{"COMBO_RATING": 36, "ACCURACY_RATING": 39}	[]	{}	PET_COMBO_04	\N	\N
d6d9735a-0982-4905-a22a-6b67ceb38f6d	EQ_PET_C04_RARE	1	EQUIPMENT	PET	Huyền Băng Liên Kích Lôi Ưng	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,RARE,LOOSE_ITEM}	{"COMBO_RATING": 47, "ACCURACY_RATING": 51}	[]	{}	PET_COMBO_04	\N	\N
1515f852-d825-484b-b33f-059ccd45c369	EQ_PET_C04_EPIC	1	EQUIPMENT	PET	Hàn Nguyệt Liên Kích Lôi Ưng	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,EPIC,LOOSE_ITEM}	{"COMBO_RATING": 61, "ACCURACY_RATING": 66}	[]	{}	PET_COMBO_04	\N	\N
f5071749-8b6c-457c-85fc-acffa8f9c32d	EQ_PET_C04_LEGENDARY	1	EQUIPMENT	PET	Đế Tâm Liên Kích Lôi Ưng · Chi Ảnh	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,LEGENDARY,LOOSE_ITEM}	{"COMBO_RATING": 77, "ACCURACY_RATING": 84}	[{"code": "LEGENDARY_PET_C04", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_04	\N	\N
c739368b-db02-446b-9591-b3acaeccc558	EQ_PET_C04_MYTHIC	1	EQUIPMENT	PET	Tịch Diệt Liên Kích Lôi Ưng · Tịch Diệt	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,MYTHIC,LOOSE_ITEM}	{"COMBO_RATING": 96, "ACCURACY_RATING": 105}	[]	{}	PET_COMBO_04	\N	\N
991d11a0-f83f-4742-8ee8-a94e6fbe08ed	EQ_PET_C04_ANCIENT	1	EQUIPMENT	PET	Thái Sơ Liên Kích Lôi Ưng · Khai Thiên	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,ANCIENT,LOOSE_ITEM}	{"COMBO_RATING": 118, "ACCURACY_RATING": 129}	[]	{}	PET_COMBO_04	\N	\N
ebaa15f4-43da-4c2c-a669-04d0194328f8	EQ_PET_C04_DIVINE	1	EQUIPMENT	PET	Dao Trì Liên Kích Lôi Ưng · Vấn Thiên	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,DIVINE,LOOSE_ITEM}	{"COMBO_RATING": 143, "ACCURACY_RATING": 156}	[]	{}	PET_COMBO_04	\N	\N
c021f7eb-a83b-431a-948d-4ea311708364	EQ_PET_C04_RELIC	1	EQUIPMENT	PET	Kỷ Nguyên Liên Kích Lôi Ưng · Luân Hồi	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,RELIC,LOOSE_ITEM}	{"COMBO_RATING": 171, "ACCURACY_RATING": 186}	[]	{}	PET_COMBO_04	\N	\N
2208ffb9-dbfc-418f-9f84-2af71cb30a60	EQ_PET_C04_GOD	1	EQUIPMENT	PET	Vạn Giới Liên Kích Lôi Ưng · Khai Giới	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_04,GOD,LOOSE_ITEM}	{"COMBO_RATING": 201, "ACCURACY_RATING": 219}	[]	{}	PET_COMBO_04	\N	\N
48acbbd2-0088-4834-93a8-3f208d1c8198	EQ_PET_C05_COMMON	1	EQUIPMENT	PET	Thiết Mộc Vô Tung Ảnh Miêu	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,COMMON,LOOSE_ITEM}	{"EVASION_RATING": 30, "ACCURACY_RATING": 30}	[]	{}	PET_COMBO_05	\N	\N
ab2a700d-2ef5-4764-bbef-12362381d955	EQ_PET_C05_UNCOMMON	1	EQUIPMENT	PET	Xích Thạch Vô Tung Ảnh Miêu	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,UNCOMMON,LOOSE_ITEM}	{"EVASION_RATING": 39, "ACCURACY_RATING": 39}	[]	{}	PET_COMBO_05	\N	\N
b8129daa-e0a9-46ba-afcb-ee3f155ed7bf	EQ_PET_C05_RARE	1	EQUIPMENT	PET	Dạ Ảnh Vô Tung Ảnh Miêu	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,RARE,LOOSE_ITEM}	{"EVASION_RATING": 51, "ACCURACY_RATING": 51}	[]	{}	PET_COMBO_05	\N	\N
e397e1cc-cf90-4004-8cbd-3aa7c00fd433	EQ_PET_C05_EPIC	1	EQUIPMENT	PET	Huyền Minh Vô Tung Ảnh Miêu	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,EPIC,LOOSE_ITEM}	{"EVASION_RATING": 66, "ACCURACY_RATING": 66}	[]	{}	PET_COMBO_05	\N	\N
fd75faa7-9af6-4a6f-a9ff-931d0aa432fc	EQ_PET_C05_LEGENDARY	1	EQUIPMENT	PET	Huyền Vũ Vô Tung Ảnh Miêu · Chi Hồn	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,LEGENDARY,LOOSE_ITEM}	{"EVASION_RATING": 84, "ACCURACY_RATING": 84}	[{"code": "LEGENDARY_PET_C05", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_05	\N	\N
fd8bcce2-9e38-418c-b936-3957aeefe930	EQ_PET_C05_MYTHIC	1	EQUIPMENT	PET	Thần Mộc Vô Tung Ảnh Miêu · Nghịch Mệnh	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,MYTHIC,LOOSE_ITEM}	{"EVASION_RATING": 105, "ACCURACY_RATING": 105}	[]	{}	PET_COMBO_05	\N	\N
8cca8de5-f250-4f67-9730-d8f0a3cecbbe	EQ_PET_C05_ANCIENT	1	EQUIPMENT	PET	Nguyên Sơ Vô Tung Ảnh Miêu · Phá Giới	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,ANCIENT,LOOSE_ITEM}	{"EVASION_RATING": 129, "ACCURACY_RATING": 129}	[]	{}	PET_COMBO_05	\N	\N
28b17341-1d9d-4ed9-ad83-c2236370ea64	EQ_PET_C05_DIVINE	1	EQUIPMENT	PET	Tử Vi Vô Tung Ảnh Miêu · Đăng Tiên	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,DIVINE,LOOSE_ITEM}	{"EVASION_RATING": 156, "ACCURACY_RATING": 156}	[]	{}	PET_COMBO_05	\N	\N
3bf3de90-a8b3-49c5-aa5a-efd416b7119d	EQ_PET_C05_RELIC	1	EQUIPMENT	PET	Bỉ Ngạn Vô Tung Ảnh Miêu · Vĩnh Hằng	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,RELIC,LOOSE_ITEM}	{"EVASION_RATING": 186, "ACCURACY_RATING": 186}	[]	{}	PET_COMBO_05	\N	\N
bc67d7e0-71b1-4938-b2e1-76480787ddbc	EQ_PET_C05_GOD	1	EQUIPMENT	PET	Nhất Niệm Vô Tung Ảnh Miêu · Tận Diệt	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_05,GOD,LOOSE_ITEM}	{"EVASION_RATING": 219, "ACCURACY_RATING": 219}	[]	{}	PET_COMBO_05	\N	\N
c842a99a-c052-4fea-a42b-7950c4f9ef7e	EQ_PET_C06_COMMON	1	EQUIPMENT	PET	Thanh Đồng Bạo Kích Chiến Viên	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,COMMON,LOOSE_ITEM}	{"CRIT_RATING": 28, "COMBO_RATING": 28}	[]	{}	PET_COMBO_06	\N	\N
a3e9842d-62c1-4673-9a36-a851afa3ee04	EQ_PET_C06_UNCOMMON	1	EQUIPMENT	PET	Bích Thủy Bạo Kích Chiến Viên	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,UNCOMMON,LOOSE_ITEM}	{"CRIT_RATING": 36, "COMBO_RATING": 36}	[]	{}	PET_COMBO_06	\N	\N
7d5f18a8-bc02-42cd-b82b-81ab86c99e86	EQ_PET_C06_RARE	1	EQUIPMENT	PET	U Minh Bạo Kích Chiến Viên	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,RARE,LOOSE_ITEM}	{"CRIT_RATING": 48, "COMBO_RATING": 47}	[]	{}	PET_COMBO_06	\N	\N
a9cae0ef-06cd-4aca-9acc-6cb7080513ca	EQ_PET_C06_EPIC	1	EQUIPMENT	PET	Cửu U Bạo Kích Chiến Viên	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,EPIC,LOOSE_ITEM}	{"CRIT_RATING": 62, "COMBO_RATING": 61}	[]	{}	PET_COMBO_06	\N	\N
899c2707-8cec-460f-b35b-2368abefeaf0	EQ_PET_C06_LEGENDARY	1	EQUIPMENT	PET	Phượng Hoàng Bạo Kích Chiến Viên · Chi Tâm	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,LEGENDARY,LOOSE_ITEM}	{"CRIT_RATING": 78, "COMBO_RATING": 77}	[{"code": "LEGENDARY_PET_C06", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_06	\N	\N
0006eff3-8e4e-4119-95a4-59fcdfc88472	EQ_PET_C06_MYTHIC	1	EQUIPMENT	PET	Tu La Bạo Kích Chiến Viên · Phệ Hồn	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,MYTHIC,LOOSE_ITEM}	{"CRIT_RATING": 98, "COMBO_RATING": 96}	[]	{}	PET_COMBO_06	\N	\N
7e0c8233-1181-420f-8124-0838a78c3a6d	EQ_PET_C06_ANCIENT	1	EQUIPMENT	PET	Thái Cổ Bạo Kích Chiến Viên · Vấn Đạo	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,ANCIENT,LOOSE_ITEM}	{"CRIT_RATING": 120, "COMBO_RATING": 118}	[]	{}	PET_COMBO_06	\N	\N
60524330-8c3e-4a0a-8b55-74f78496dcff	EQ_PET_C06_DIVINE	1	EQUIPMENT	PET	Thiên Đạo Bạo Kích Chiến Viên · Trấn Thiên	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,DIVINE,LOOSE_ITEM}	{"CRIT_RATING": 146, "COMBO_RATING": 143}	[]	{}	PET_COMBO_06	\N	\N
e86b0e13-bfe0-4905-aaeb-59d9c5d207df	EQ_PET_C06_RELIC	1	EQUIPMENT	PET	Luân Hồi Bạo Kích Chiến Viên · Vạn Kiếp	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,RELIC,LOOSE_ITEM}	{"CRIT_RATING": 174, "COMBO_RATING": 171}	[]	{}	PET_COMBO_06	\N	\N
f61c9075-81ce-4cfc-abdb-2389d61e2d4d	EQ_PET_C06_GOD	1	EQUIPMENT	PET	Đại Đạo Bạo Kích Chiến Viên · Táng Thiên	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_06,GOD,LOOSE_ITEM}	{"CRIT_RATING": 204, "COMBO_RATING": 201}	[]	{}	PET_COMBO_06	\N	\N
4a52575c-49d3-400c-9f56-9d0c7c0d2b93	EQ_PET_C07_COMMON	1	EQUIPMENT	PET	Hắc Thiết Hộ Thể · Thiết Giáp Huyền Quy	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,COMMON,SET_PIECE,SET_COMMON_A}	{"HP_FLAT": 400, "ARMOR_FLAT": 38}	[]	{}	PET_COMBO_07	SET_COMMON_A	Hắc Thiết Hộ Thể
fbe6aab0-c928-41b1-a828-79bd3c3e1d2c	EQ_PET_C07_UNCOMMON	1	EQUIPMENT	PET	Linh Cốt Thanh Tâm · Thanh Tâm Linh Lộc	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,UNCOMMON,SET_PIECE,SET_UNCOMMON_A}	{"HP_FLAT": 520, "ARMOR_FLAT": 49}	[]	{}	PET_COMBO_07	SET_UNCOMMON_A	Linh Cốt Thanh Tâm
a9501eff-f62f-4f49-ba27-d54688e14e9f	EQ_PET_C07_RARE	1	EQUIPMENT	PET	Huyền Giáp Bất Động · Huyền Giáp Sơn Quy	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,RARE,SET_PIECE,SET_RARE_A}	{"HP_FLAT": 680, "ARMOR_FLAT": 64}	[]	{}	PET_COMBO_07	SET_RARE_A	Huyền Giáp Bất Động
ce194d33-7f23-4fb8-841d-e61d10562c93	EQ_PET_C07_EPIC	1	EQUIPMENT	PET	Cửu U Huyền Minh · Cửu U Minh Quy	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,EPIC,SET_PIECE,SET_EPIC_A}	{"HP_FLAT": 880, "ARMOR_FLAT": 83}	[]	{}	PET_COMBO_07	SET_EPIC_A	Cửu U Huyền Minh
05a05a40-54af-4c3e-aca4-266eac4d6031	EQ_PET_C07_LEGENDARY	1	EQUIPMENT	PET	Chân Long Trấn Nhạc · Chân Long Hộ Đạo	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,LEGENDARY,SET_PIECE,SET_LEGENDARY_A}	{"HP_FLAT": 1120, "ARMOR_FLAT": 105}	[{"code": "LEGENDARY_PET_C07", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_07	SET_LEGENDARY_A	Chân Long Trấn Nhạc
964ebe60-23f8-45c9-a4c5-a6df93681902	EQ_PET_C07_MYTHIC	1	EQUIPMENT	PET	Thái Hư Vô Tướng · Thái Hư Huyền Kỳ	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,MYTHIC,SET_PIECE,SET_MYTHIC_A}	{"HP_FLAT": 1400, "ARMOR_FLAT": 131}	[]	{}	PET_COMBO_07	SET_MYTHIC_A	Thái Hư Vô Tướng
193ebe7e-c76c-44bd-a140-8028383d2d44	EQ_PET_C07_ANCIENT	1	EQUIPMENT	PET	Hồng Hoang Bất Diệt · Hồng Hoang Kỳ Lân	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,ANCIENT,SET_PIECE,SET_ANCIENT_A}	{"HP_FLAT": 1720, "ARMOR_FLAT": 161}	[]	{}	PET_COMBO_07	SET_ANCIENT_A	Hồng Hoang Bất Diệt
2cf93b75-9a4d-4beb-a14e-c55148edb5d1	EQ_PET_C07_DIVINE	1	EQUIPMENT	PET	Cửu Thiên Thánh Thể · Cửu Thiên Thánh Lân	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,DIVINE,SET_PIECE,SET_DIVINE_A}	{"HP_FLAT": 2080, "ARMOR_FLAT": 195}	[]	{}	PET_COMBO_07	SET_DIVINE_A	Cửu Thiên Thánh Thể
d2590608-53d6-4db6-ad22-212f5ebe60c6	EQ_PET_C07_RELIC	1	EQUIPMENT	PET	Vạn Cổ Bất Hủ · Vạn Cổ Bất Hủ Quy	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,RELIC,SET_PIECE,SET_RELIC_A}	{"HP_FLAT": 2480, "ARMOR_FLAT": 233}	[]	{}	PET_COMBO_07	SET_RELIC_A	Vạn Cổ Bất Hủ
20371645-c24f-42c9-9555-6e6ddad5014d	EQ_PET_C07_GOD	1	EQUIPMENT	PET	Hỗn Độn Vô Cực · Hỗn Độn Tổ Long	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_07,GOD,SET_PIECE,SET_GOD_A}	{"HP_FLAT": 2920, "ARMOR_FLAT": 274}	[]	{}	PET_COMBO_07	SET_GOD_A	Hỗn Độn Vô Cực
ec7fc78a-b627-4e0a-8b4d-2a5ed28671be	EQ_PET_C08_COMMON	1	EQUIPMENT	PET	Liệp Phong · Liệp Phong Ưng	\N	PET	COMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,COMMON,SET_PIECE,SET_COMMON_B}	{"BLEED_RATING": 29, "COMBO_RATING": 28}	[]	{}	PET_COMBO_08	SET_COMMON_B	Liệp Phong
685d8925-90df-4c38-b022-6c6e697b32ac	EQ_PET_C08_UNCOMMON	1	EQUIPMENT	PET	Thanh Phong Truy Ảnh · Thanh Phong Ảnh Hồ	\N	PET	UNCOMMON	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,UNCOMMON,SET_PIECE,SET_UNCOMMON_B}	{"BLEED_RATING": 38, "COMBO_RATING": 36}	[]	{}	PET_COMBO_08	SET_UNCOMMON_B	Thanh Phong Truy Ảnh
e4b2d716-2c63-43fe-8674-fe514c2c5eb6	EQ_PET_C08_RARE	1	EQUIPMENT	PET	Huyết Sát · Huyết Sát Ma Lang	\N	PET	RARE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,RARE,SET_PIECE,SET_RARE_B}	{"BLEED_RATING": 49, "COMBO_RATING": 47}	[]	{}	PET_COMBO_08	SET_RARE_B	Huyết Sát
d2d94363-3d63-4f93-8938-c77a32222757	EQ_PET_C08_EPIC	1	EQUIPMENT	PET	Thiên Lôi · Thiên Lôi Tử Ưng	\N	PET	EPIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,EPIC,SET_PIECE,SET_EPIC_B}	{"BLEED_RATING": 64, "COMBO_RATING": 61}	[]	{}	PET_COMBO_08	SET_EPIC_B	Thiên Lôi
54530d0f-46b7-4dc5-8fa0-c88a5c77160b	EQ_PET_C08_LEGENDARY	1	EQUIPMENT	PET	Phượng Hoàng Niết Bàn · Phượng Hoàng Niết Bàn	\N	PET	LEGENDARY	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,LEGENDARY,SET_PIECE,SET_LEGENDARY_B}	{"BLEED_RATING": 81, "COMBO_RATING": 77}	[{"code": "LEGENDARY_PET_C08", "description": "Khi HP thấp, PET chuyển một phần Damage bonus thành Barrier Strength tạm thời."}]	{}	PET_COMBO_08	SET_LEGENDARY_B	Phượng Hoàng Niết Bàn
cc8f0043-2740-4125-af50-477a46b6b0ca	EQ_PET_C08_MYTHIC	1	EQUIPMENT	PET	Tu La Huyết Ngục · Tu La Huyết Kỳ	\N	PET	MYTHIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,MYTHIC,SET_PIECE,SET_MYTHIC_B}	{"BLEED_RATING": 102, "COMBO_RATING": 96}	[]	{}	PET_COMBO_08	SET_MYTHIC_B	Tu La Huyết Ngục
77265ee3-700f-4f9d-aff8-948dfeaead54	EQ_PET_C08_ANCIENT	1	EQUIPMENT	PET	Thái Cổ Chiến Thiên · Thái Cổ Chiến Viên	\N	PET	ANCIENT	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,ANCIENT,SET_PIECE,SET_ANCIENT_B}	{"BLEED_RATING": 125, "COMBO_RATING": 118}	[]	{}	PET_COMBO_08	SET_ANCIENT_B	Thái Cổ Chiến Thiên
20c6949e-fd19-491e-afec-668da1595cc4	EQ_PET_C08_DIVINE	1	EQUIPMENT	PET	Thiên Đạo Vấn Kiếm · Thiên Đạo Chân Long	\N	PET	DIVINE	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,DIVINE,SET_PIECE,SET_DIVINE_B}	{"BLEED_RATING": 151, "COMBO_RATING": 143}	[]	{}	PET_COMBO_08	SET_DIVINE_B	Thiên Đạo Vấn Kiếm
6dd6f559-e641-4778-87ce-34a816213cb4	EQ_PET_C08_RELIC	1	EQUIPMENT	PET	Luân Hồi Táng Tiên · Luân Hồi Minh Phượng	\N	PET	RELIC	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,RELIC,SET_PIECE,SET_RELIC_B}	{"BLEED_RATING": 180, "COMBO_RATING": 171}	[]	{}	PET_COMBO_08	SET_RELIC_B	Luân Hồi Táng Tiên
ab434e7c-d020-4968-8fdc-697f5b5ab259	EQ_PET_C08_GOD	1	EQUIPMENT	PET	Đại Đạo Táng Thiên · Đại Đạo Thôn Thiên Côn	\N	PET	GOD	f	\N	ACCOUNT	t	{PET,EQUIPMENT,FULL_COMBO_MATRIX,XIANXIA_NAMING_V1,PET_COMBO_08,GOD,SET_PIECE,SET_GOD_B}	{"BLEED_RATING": 212, "COMBO_RATING": 201}	[]	{}	PET_COMBO_08	SET_GOD_B	Đại Đạo Táng Thiên
\.


--
-- TOC entry 5727 (class 0 OID 34201)
-- Dependencies: 292
-- Data for Name: item_instances; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.item_instances (id, player_id, hero_id, item_code, item_config_version_id, rarity, item_level, state, durability, affixes, unique_effects, locked, acquired_at, updated_at, version) FROM stdin;
40000000-0000-0000-0000-000000000001	20000000-0000-0000-0000-000000000001	30000000-0000-0000-0000-000000000001	EQ_HELM_RARE_SAMPLE	1	RARE	145	EQUIPPED	\N	[{"stat": "HP_FLAT", "value": 720}, {"stat": "ARMOR_FLAT", "value": 66}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000002	20000000-0000-0000-0000-000000000001	30000000-0000-0000-0000-000000000001	EQ_CHEST_UNCOMMON_SAMPLE	1	UNCOMMON	132	EQUIPPED	\N	[{"stat": "ARMOR_FLAT", "value": 78}, {"stat": "TOUGHNESS_RATING", "value": 42}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000003	20000000-0000-0000-0000-000000000001	30000000-0000-0000-0000-000000000001	EQ_WEAPON_EPIC_SAMPLE	1	EPIC	168	EQUIPPED	\N	[{"stat": "DAMAGE_BONUS_PCT", "value": 6.1}, {"stat": "CRIT_RATING", "value": 34}, {"stat": "LIFESTEAL_PCT", "value": 2.5}, {"stat": "TOUGHNESS_RATING", "value": 41}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000004	20000000-0000-0000-0000-000000000001	30000000-0000-0000-0000-000000000001	EQ_RING_RARE_SAMPLE	1	RARE	151	OWNED	\N	[{"stat": "CRIT_RATING", "value": 39}, {"stat": "DAMAGE_BONUS_PCT", "value": 5.2}, {"stat": "COMBO_RATING", "value": 37}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000005	20000000-0000-0000-0000-000000000002	30000000-0000-0000-0000-000000000002	EQ_HELM_LEGENDARY_SAMPLE	1	LEGENDARY	286	EQUIPPED	\N	[{"stat": "HP_FLAT", "value": 1380}, {"stat": "TOUGHNESS_RATING", "value": 62}, {"stat": "COMBO_RATING", "value": 51}, {"stat": "ACCURACY_RATING", "value": 58}, {"stat": "CRIT_RATING", "value": 54}]	[{"code": "FORESIGHT_CHAIN"}]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000006	20000000-0000-0000-0000-000000000002	30000000-0000-0000-0000-000000000002	EQ_BOOTS_EPIC_SAMPLE	1	EPIC	274	EQUIPPED	\N	[{"stat": "EVASION_RATING", "value": 68}, {"stat": "COMBO_RATING", "value": 55}, {"stat": "ARMOR_FLAT", "value": 60}, {"stat": "ACCURACY_RATING", "value": 57}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000007	20000000-0000-0000-0000-000000000002	30000000-0000-0000-0000-000000000002	EQ_WEAPON_LEGENDARY_SAMPLE	1	LEGENDARY	301	EQUIPPED	\N	[{"stat": "DAMAGE_BONUS_PCT", "value": 8.8}, {"stat": "COMBO_RATING", "value": 61}, {"stat": "BLEED_RATING", "value": 72}, {"stat": "EVASION_RATING", "value": 65}, {"stat": "HP_FLAT", "value": 1160}]	[{"code": "SOULREAPER_EDGE"}]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000008	20000000-0000-0000-0000-000000000002	30000000-0000-0000-0000-000000000002	EQ_AMULET_RARE_SAMPLE	1	RARE	265	OWNED	\N	[{"stat": "ACCURACY_RATING", "value": 64}, {"stat": "ARMOR_FLAT", "value": 57}, {"stat": "CRIT_RATING", "value": 59}, {"stat": "BLEED_RATING", "value": 54}, {"stat": "COMBO_RATING", "value": 52}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000009	20000000-0000-0000-0000-000000000003	30000000-0000-0000-0000-000000000003	EQ_CHEST_LEGENDARY_SAMPLE	1	LEGENDARY	520	EQUIPPED	\N	[{"stat": "HP_FLAT", "value": 2450}, {"stat": "ARMOR_FLAT", "value": 125}, {"stat": "TOUGHNESS_RATING", "value": 108}, {"stat": "CRIT_RATING", "value": 91}, {"stat": "LIFESTEAL_PCT", "value": 4.1}]	[{"code": "LAST_BASTION"}]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000010	20000000-0000-0000-0000-000000000003	30000000-0000-0000-0000-000000000003	EQ_RING_LEGENDARY_SAMPLE	1	LEGENDARY	541	EQUIPPED	\N	[{"stat": "CRIT_RATING", "value": 114}, {"stat": "ARMOR_FLAT", "value": 102}, {"stat": "ACCURACY_RATING", "value": 107}, {"stat": "BLEED_RATING", "value": 99}, {"stat": "COMBO_RATING", "value": 96}]	[{"code": "CRIMSON_LINK"}]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000011	20000000-0000-0000-0000-000000000003	30000000-0000-0000-0000-000000000003	EQ_OFF_HAND_EPIC_SAMPLE	1	EPIC	505	EQUIPPED	\N	[{"stat": "DAMAGE_BONUS_PCT", "value": 9.2}, {"stat": "CRIT_RATING", "value": 86}, {"stat": "LIFESTEAL_PCT", "value": 3.5}, {"stat": "TOUGHNESS_RATING", "value": 95}]	[]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
40000000-0000-0000-0000-000000000012	20000000-0000-0000-0000-000000000003	30000000-0000-0000-0000-000000000003	EQ_PET_LEGENDARY_SAMPLE	1	LEGENDARY	558	OWNED	\N	[{"stat": "DAMAGE_BONUS_PCT", "value": 18.4}, {"stat": "HP_FLAT", "value": 3100}]	[{"code": "GUARDIAN_BOND"}]	f	2026-08-11 07:56:06.230383+00	2026-08-11 07:56:06.230383+00	0
\.


--
-- TOC entry 5731 (class 0 OID 34295)
-- Dependencies: 296
-- Data for Name: player_recipes; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.player_recipes (player_id, recipe_code, discovered_at, source_type, source_id) FROM stdin;
\.


--
-- TOC entry 5726 (class 0 OID 34192)
-- Dependencies: 291
-- Data for Name: rarity_policy; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.rarity_policy (rarity, power_ordinal) FROM stdin;
COMMON	1
UNCOMMON	2
RARE	3
EPIC	4
LEGENDARY	5
MYTHIC	6
ANCIENT	7
DIVINE	8
RELIC	9
GOD	10
\.


--
-- TOC entry 5730 (class 0 OID 34276)
-- Dependencies: 295
-- Data for Name: recipes; Type: TABLE DATA; Schema: inventory; Owner: lost_kingsland
--

COPY inventory.recipes (id, recipe_code, config_version_id, profession_code, required_level, inputs, outputs, duration_seconds, building_requirement, discovery_rule) FROM stdin;
\.


--
-- TOC entry 5749 (class 0 OID 34623)
-- Dependencies: 314
-- Data for Name: construction_jobs; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.construction_jobs (id, kingdom_id, building_id, from_level, to_level, queue_slot, status, cost_operation_id, base_duration_seconds, help_seconds_applied, started_at, completes_at, completed_at, apply_operation_id, config_version_id, version) FROM stdin;
\.


--
-- TOC entry 5748 (class 0 OID 34601)
-- Dependencies: 313
-- Data for Name: kingdom_buildings; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.kingdom_buildings (id, kingdom_id, building_code, level, state_json, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5747 (class 0 OID 34582)
-- Dependencies: 312
-- Data for Name: player_kingdoms; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.player_kingdoms (id, player_id, level, city_hall_level, banner_key, created_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5750 (class 0 OID 34659)
-- Dependencies: 315
-- Data for Name: player_research; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.player_research (kingdom_id, research_code, level, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5752 (class 0 OID 34696)
-- Dependencies: 317
-- Data for Name: production_sites; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.production_sites (kingdom_id, resource_code, building_code, production_per_hour, storage_cap, stored_amount, last_accrual_at, version) FROM stdin;
\.


--
-- TOC entry 5751 (class 0 OID 34672)
-- Dependencies: 316
-- Data for Name: research_jobs; Type: TABLE DATA; Schema: kingdom; Owner: lost_kingsland
--

COPY kingdom.research_jobs (id, kingdom_id, research_code, from_level, to_level, status, cost_operation_id, help_seconds_applied, started_at, completes_at, completed_at, config_version_id, version) FROM stdin;
\.


--
-- TOC entry 5797 (class 0 OID 35786)
-- Dependencies: 362
-- Data for Name: event_defs; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.event_defs (id, event_code, config_version_id, event_type, eligibility_rule, objective_rule, caps_rule, reward_table, anti_abuse_rule, rollback_plan) FROM stdin;
\.


--
-- TOC entry 5798 (class 0 OID 35807)
-- Dependencies: 363
-- Data for Name: events; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.events (id, event_code, season_id, config_version_id, starts_at, ends_at, status, cohort_rule, runtime_config, version) FROM stdin;
\.


--
-- TOC entry 5801 (class 0 OID 35872)
-- Dependencies: 366
-- Data for Name: leaderboard_entries; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.leaderboard_entries (leaderboard_id, subject_id, score, rank_snapshot, tiebreak_json, updated_at) FROM stdin;
\.


--
-- TOC entry 5800 (class 0 OID 35851)
-- Dependencies: 365
-- Data for Name: leaderboards; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.leaderboards (id, leaderboard_code, season_id, event_id, subject_type, scoring_rule, closes_at, status) FROM stdin;
\.


--
-- TOC entry 5802 (class 0 OID 35888)
-- Dependencies: 367
-- Data for Name: merchant_rotations; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.merchant_rotations (id, merchant_code, player_id, cohort_key, starts_at, ends_at, offers_json, config_version_id) FROM stdin;
\.


--
-- TOC entry 5799 (class 0 OID 35829)
-- Dependencies: 364
-- Data for Name: player_event_progress; Type: TABLE DATA; Schema: liveops; Owner: lost_kingsland
--

COPY liveops.player_event_progress (event_id, player_id, score, progress_json, reward_state, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5783 (class 0 OID 35378)
-- Dependencies: 348
-- Data for Name: gather_jobs; Type: TABLE DATA; Schema: march; Owner: lost_kingsland
--

COPY march.gather_jobs (id, march_slot_id, player_id, resource_site_id, status, start_remaining_amount, gather_rate_per_second, gathered_amount, started_at, last_settled_at, ended_at, settlement_operation_id, config_version_id, version) FROM stdin;
\.


--
-- TOC entry 5780 (class 0 OID 35286)
-- Dependencies: 345
-- Data for Name: hunt_loops; Type: TABLE DATA; Schema: march; Owner: lost_kingsland
--

COPY march.hunt_loops (id, march_slot_id, player_id, exploration_floor, monster_profile_code, status, current_round, started_at, stopped_at, config_version_id, version) FROM stdin;
\.


--
-- TOC entry 5781 (class 0 OID 35320)
-- Dependencies: 346
-- Data for Name: hunt_rounds; Type: TABLE DATA; Schema: march; Owner: lost_kingsland
--

COPY march.hunt_rounds (id, hunt_loop_id, round_no, combat_instance_id, reward_grant_id, exploration_floor_snapshot, clan_id_snapshot, clan_drop_level_bonus_pct, loot_snapshot, started_at, settled_at) FROM stdin;
\.


--
-- TOC entry 5779 (class 0 OID 35251)
-- Dependencies: 344
-- Data for Name: player_march_slots; Type: TABLE DATA; Schema: march; Owner: lost_kingsland
--

COPY march.player_march_slots (id, player_id, slot_no, commander_id, status, assignment_type, loadout_snapshot, unlocked_at_city_hall_level, created_at, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5782 (class 0 OID 35358)
-- Dependencies: 347
-- Data for Name: resource_sites; Type: TABLE DATA; Schema: march; Owner: lost_kingsland
--

COPY march.resource_sites (id, resource_code, tier, richness_code, initial_amount, remaining_amount, base_gather_rate_per_second, status, generated_from, config_version_id, created_at, reopened_at, depleted_at, version) FROM stdin;
\.


--
-- TOC entry 5785 (class 0 OID 35464)
-- Dependencies: 350
-- Data for Name: direct_trade_offers; Type: TABLE DATA; Schema: market; Owner: lost_kingsland
--

COPY market.direct_trade_offers (id, sender_player_id, recipient_player_id, item_instance_id, requested_gold, status, created_at, expires_at, resolved_at, version) FROM stdin;
\.


--
-- TOC entry 5786 (class 0 OID 35492)
-- Dependencies: 351
-- Data for Name: item_transfers; Type: TABLE DATA; Schema: market; Owner: lost_kingsland
--

COPY market.item_transfers (id, transfer_type, source_ref_id, item_instance_id, from_player_id, to_player_id, recipient_floor_snapshot, recipient_natural_max_rarity, recipient_allowed_max_rarity, item_rarity, eligibility_passed, ownership_operation_id, idempotency_key, created_at, settled_at) FROM stdin;
\.


--
-- TOC entry 5784 (class 0 OID 35425)
-- Dependencies: 349
-- Data for Name: listings; Type: TABLE DATA; Schema: market; Owner: lost_kingsland
--

COPY market.listings (id, seller_player_id, item_instance_id, listed_rarity, listed_item_level, price_asset_code, price_amount, status, buyer_player_id, created_at, expires_at, settled_at, settlement_operation_id, version) FROM stdin;
\.


--
-- TOC entry 5808 (class 0 OID 36012)
-- Dependencies: 373
-- Data for Name: guild_media_settings; Type: TABLE DATA; Schema: media; Owner: lost_kingsland
--

COPY media.guild_media_settings (guild_binding_id, enabled, dj_role_id, default_volume, max_queue_items, max_track_seconds, empty_voice_disconnect_seconds, auto_next_enabled, youtube_enabled, youtube_search_limit, search_timeout_seconds, source_policy, updated_at, version) FROM stdin;
\.


--
-- TOC entry 5814 (class 0 OID 36096)
-- Dependencies: 380
-- Data for Name: abuse_signals; Type: TABLE DATA; Schema: ops; Owner: lost_kingsland
--

COPY ops.abuse_signals (id, player_id, signal_type, severity, signal_json, detected_at, reviewed_at, disposition) FROM stdin;
\.


--
-- TOC entry 5810 (class 0 OID 36049)
-- Dependencies: 376
-- Data for Name: audit_logs_default; Type: TABLE DATA; Schema: ops; Owner: lost_kingsland
--

COPY ops.audit_logs_default (id, actor_type, actor_id, action, object_type, object_id, reason_code, before_json, after_json, request_id, created_at) FROM stdin;
\.


--
-- TOC entry 5811 (class 0 OID 36059)
-- Dependencies: 377
-- Data for Name: compensation_cases; Type: TABLE DATA; Schema: ops; Owner: lost_kingsland
--

COPY ops.compensation_cases (id, player_id, reason_code, evidence_json, reward_bundle, requested_by, approved_by, status, operation_id, created_at, resolved_at) FROM stdin;
\.


--
-- TOC entry 5812 (class 0 OID 36080)
-- Dependencies: 378
-- Data for Name: player_sanctions; Type: TABLE DATA; Schema: ops; Owner: lost_kingsland
--

COPY ops.player_sanctions (id, player_id, sanction_type, reason_code, evidence_json, starts_at, ends_at, revoked_at, created_by) FROM stdin;
\.


--
-- TOC entry 5674 (class 0 OID 33196)
-- Dependencies: 239
-- Data for Name: config_versions; Type: TABLE DATA; Schema: platform; Owner: lost_kingsland
--

COPY platform.config_versions (id, version_code, description, status, effective_from, created_at, created_by) FROM stdin;
1	LK-V4.0-INITIAL	Initial Lost Kingsland v4.0 content/config anchor for Combat Engine v2.2	ACTIVE	\N	2026-08-11 07:56:06.230383+00	\N
\.


--
-- TOC entry 5676 (class 0 OID 33208)
-- Dependencies: 241
-- Data for Name: feature_flags; Type: TABLE DATA; Schema: platform; Owner: lost_kingsland
--

COPY platform.feature_flags (id, flag_key, config_version_id, enabled, rule_json) FROM stdin;
\.


--
-- TOC entry 5678 (class 0 OID 33225)
-- Dependencies: 243
-- Data for Name: idempotency_records; Type: TABLE DATA; Schema: platform; Owner: lost_kingsland
--

COPY platform.idempotency_records (id, actor_scope, actor_id, operation_type, idempotency_key, request_hash, status, response_code, response_json, created_at, completed_at, expires_at) FROM stdin;
\.


--
-- TOC entry 5679 (class 0 OID 33236)
-- Dependencies: 244
-- Data for Name: outbox_events; Type: TABLE DATA; Schema: platform; Owner: lost_kingsland
--

COPY platform.outbox_events (id, aggregate_type, aggregate_id, event_type, routing_key, payload, headers, created_at, published_at, publish_attempts, last_error) FROM stdin;
\.


--
-- TOC entry 5680 (class 0 OID 33248)
-- Dependencies: 245
-- Data for Name: scheduled_actions; Type: TABLE DATA; Schema: platform; Owner: lost_kingsland
--

COPY platform.scheduled_actions (id, action_type, aggregate_type, aggregate_id, execute_at, status, payload, attempt_count, locked_at, locked_by, completed_at, last_error, created_at) FROM stdin;
\.


--
-- TOC entry 5815 (class 0 OID 37116)
-- Dependencies: 383
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: lost_kingsland
--

COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
\.


--
-- TOC entry 5861 (class 0 OID 0)
-- Dependencies: 307
-- Name: combat_events_id_seq; Type: SEQUENCE SET; Schema: combat; Owner: lost_kingsland
--

SELECT pg_catalog.setval('combat.combat_events_id_seq', 1, false);


--
-- TOC entry 5862 (class 0 OID 0)
-- Dependencies: 309
-- Name: rng_draws_id_seq; Type: SEQUENCE SET; Schema: combat; Owner: lost_kingsland
--

SELECT pg_catalog.setval('combat.rng_draws_id_seq', 1, false);


--
-- TOC entry 5863 (class 0 OID 0)
-- Dependencies: 262
-- Name: march_slot_unlock_rules_id_seq; Type: SEQUENCE SET; Schema: content; Owner: lost_kingsland
--

SELECT pg_catalog.setval('content.march_slot_unlock_rules_id_seq', 1, false);


--
-- TOC entry 5864 (class 0 OID 0)
-- Dependencies: 253
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: content; Owner: lost_kingsland
--

SELECT pg_catalog.setval('content.tags_id_seq', 1, false);


--
-- TOC entry 5865 (class 0 OID 0)
-- Dependencies: 321
-- Name: ledger_entries_id_seq; Type: SEQUENCE SET; Schema: economy; Owner: lost_kingsland
--

SELECT pg_catalog.setval('economy.ledger_entries_id_seq', 1, false);


--
-- TOC entry 5866 (class 0 OID 0)
-- Dependencies: 289
-- Name: equipment_affix_combinations_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: lost_kingsland
--

SELECT pg_catalog.setval('inventory.equipment_affix_combinations_id_seq', 192, true);


--
-- TOC entry 5867 (class 0 OID 0)
-- Dependencies: 379
-- Name: abuse_signals_id_seq; Type: SEQUENCE SET; Schema: ops; Owner: lost_kingsland
--

SELECT pg_catalog.setval('ops.abuse_signals_id_seq', 1, false);


--
-- TOC entry 5868 (class 0 OID 0)
-- Dependencies: 374
-- Name: audit_logs_id_seq; Type: SEQUENCE SET; Schema: ops; Owner: lost_kingsland
--

SELECT pg_catalog.setval('ops.audit_logs_id_seq', 1, false);


--
-- TOC entry 5869 (class 0 OID 0)
-- Dependencies: 238
-- Name: config_versions_id_seq; Type: SEQUENCE SET; Schema: platform; Owner: lost_kingsland
--

SELECT pg_catalog.setval('platform.config_versions_id_seq', 1, true);


--
-- TOC entry 5870 (class 0 OID 0)
-- Dependencies: 240
-- Name: feature_flags_id_seq; Type: SEQUENCE SET; Schema: platform; Owner: lost_kingsland
--

SELECT pg_catalog.setval('platform.feature_flags_id_seq', 1, false);


--
-- TOC entry 5871 (class 0 OID 0)
-- Dependencies: 242
-- Name: idempotency_records_id_seq; Type: SEQUENCE SET; Schema: platform; Owner: lost_kingsland
--

SELECT pg_catalog.setval('platform.idempotency_records_id_seq', 1, false);


--
-- TOC entry 4991 (class 2606 OID 34388)
-- Name: adventure_runs adventure_runs_pkey; Type: CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.adventure_runs
    ADD CONSTRAINT adventure_runs_pkey PRIMARY KEY (id);


--
-- TOC entry 4997 (class 2606 OID 34433)
-- Name: energy_balances energy_balances_pkey; Type: CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.energy_balances
    ADD CONSTRAINT energy_balances_pkey PRIMARY KEY (player_id);


--
-- TOC entry 4989 (class 2606 OID 34367)
-- Name: player_exploration_progress player_exploration_progress_pkey; Type: CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.player_exploration_progress
    ADD CONSTRAINT player_exploration_progress_pkey PRIMARY KEY (player_id);


--
-- TOC entry 4986 (class 2606 OID 34350)
-- Name: player_region_progress player_region_progress_pkey; Type: CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.player_region_progress
    ADD CONSTRAINT player_region_progress_pkey PRIMARY KEY (player_id, region_code);


--
-- TOC entry 4995 (class 2606 OID 34417)
-- Name: run_node_states run_node_states_pkey; Type: CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.run_node_states
    ADD CONSTRAINT run_node_states_pkey PRIMARY KEY (run_id, node_code);


--
-- TOC entry 5090 (class 2606 OID 34896)
-- Name: clan_applications clan_applications_clan_id_player_id_status_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_applications
    ADD CONSTRAINT clan_applications_clan_id_player_id_status_key UNIQUE (clan_id, player_id, status);


--
-- TOC entry 5092 (class 2606 OID 34894)
-- Name: clan_applications clan_applications_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_applications
    ADD CONSTRAINT clan_applications_pkey PRIMARY KEY (id);


--
-- TOC entry 5190 (class 2606 OID 35572)
-- Name: clan_boss_attempts clan_boss_attempts_clan_boss_id_player_id_attempt_no_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_clan_boss_id_player_id_attempt_no_key UNIQUE (clan_boss_id, player_id, attempt_no);


--
-- TOC entry 5192 (class 2606 OID 35570)
-- Name: clan_boss_attempts clan_boss_attempts_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_pkey PRIMARY KEY (id);


--
-- TOC entry 5183 (class 2606 OID 35532)
-- Name: clan_boss_defs clan_boss_defs_boss_code_config_version_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_defs
    ADD CONSTRAINT clan_boss_defs_boss_code_config_version_id_key UNIQUE (boss_code, config_version_id);


--
-- TOC entry 5185 (class 2606 OID 35530)
-- Name: clan_boss_defs clan_boss_defs_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_defs
    ADD CONSTRAINT clan_boss_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5187 (class 2606 OID 35549)
-- Name: clan_bosses clan_bosses_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_bosses
    ADD CONSTRAINT clan_bosses_pkey PRIMARY KEY (id);


--
-- TOC entry 5124 (class 2606 OID 35106)
-- Name: clan_building_contributions clan_building_contributions_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_contributions
    ADD CONSTRAINT clan_building_contributions_pkey PRIMARY KEY (id);


--
-- TOC entry 5115 (class 2606 OID 35070)
-- Name: clan_building_defs clan_building_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_defs
    ADD CONSTRAINT clan_building_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 5117 (class 2606 OID 35068)
-- Name: clan_building_defs clan_building_defs_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_defs
    ADD CONSTRAINT clan_building_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5119 (class 2606 OID 35093)
-- Name: clan_buildings clan_buildings_clan_id_building_code_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_buildings
    ADD CONSTRAINT clan_buildings_clan_id_building_code_key UNIQUE (clan_id, building_code);


--
-- TOC entry 5121 (class 2606 OID 35091)
-- Name: clan_buildings clan_buildings_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_buildings
    ADD CONSTRAINT clan_buildings_pkey PRIMARY KEY (id);


--
-- TOC entry 5104 (class 2606 OID 34986)
-- Name: clan_donations clan_donations_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_donations
    ADD CONSTRAINT clan_donations_pkey PRIMARY KEY (id);


--
-- TOC entry 5096 (class 2606 OID 34939)
-- Name: clan_help_actions clan_help_actions_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_actions
    ADD CONSTRAINT clan_help_actions_pkey PRIMARY KEY (request_id, helper_player_id);


--
-- TOC entry 5094 (class 2606 OID 34922)
-- Name: clan_help_requests clan_help_requests_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_requests
    ADD CONSTRAINT clan_help_requests_pkey PRIMARY KEY (id);


--
-- TOC entry 5083 (class 2606 OID 34860)
-- Name: clan_members clan_members_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_members
    ADD CONSTRAINT clan_members_pkey PRIMARY KEY (clan_id, player_id);


--
-- TOC entry 5085 (class 2606 OID 34862)
-- Name: clan_members clan_members_player_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_members
    ADD CONSTRAINT clan_members_player_id_key UNIQUE (player_id);


--
-- TOC entry 5088 (class 2606 OID 34879)
-- Name: clan_permissions clan_permissions_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_permissions
    ADD CONSTRAINT clan_permissions_pkey PRIMARY KEY (clan_id, rank, permission_code);


--
-- TOC entry 5113 (class 2606 OID 35042)
-- Name: clan_quest_contributions clan_quest_contributions_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_contributions
    ADD CONSTRAINT clan_quest_contributions_pkey PRIMARY KEY (clan_quest_id, player_id);


--
-- TOC entry 5107 (class 2606 OID 35010)
-- Name: clan_quest_defs clan_quest_defs_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_defs
    ADD CONSTRAINT clan_quest_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5109 (class 2606 OID 35012)
-- Name: clan_quest_defs clan_quest_defs_quest_code_config_version_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_defs
    ADD CONSTRAINT clan_quest_defs_quest_code_config_version_id_key UNIQUE (quest_code, config_version_id);


--
-- TOC entry 5111 (class 2606 OID 35028)
-- Name: clan_quests clan_quests_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quests
    ADD CONSTRAINT clan_quests_pkey PRIMARY KEY (id);


--
-- TOC entry 5098 (class 2606 OID 34958)
-- Name: clan_tech_defs clan_tech_defs_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_tech_defs
    ADD CONSTRAINT clan_tech_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5100 (class 2606 OID 34960)
-- Name: clan_tech_defs clan_tech_defs_tech_code_config_version_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_tech_defs
    ADD CONSTRAINT clan_tech_defs_tech_code_config_version_id_key UNIQUE (tech_code, config_version_id);


--
-- TOC entry 5102 (class 2606 OID 34973)
-- Name: clan_technology clan_technology_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_technology
    ADD CONSTRAINT clan_technology_pkey PRIMARY KEY (clan_id, tech_code);


--
-- TOC entry 5075 (class 2606 OID 34840)
-- Name: clans clans_name_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clans
    ADD CONSTRAINT clans_name_key UNIQUE (name);


--
-- TOC entry 5077 (class 2606 OID 34836)
-- Name: clans clans_pkey; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clans
    ADD CONSTRAINT clans_pkey PRIMARY KEY (id);


--
-- TOC entry 5079 (class 2606 OID 34838)
-- Name: clans clans_public_id_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clans
    ADD CONSTRAINT clans_public_id_key UNIQUE (public_id);


--
-- TOC entry 5081 (class 2606 OID 34842)
-- Name: clans clans_tag_key; Type: CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clans
    ADD CONSTRAINT clans_tag_key UNIQUE (tag);


--
-- TOC entry 5002 (class 2606 OID 34485)
-- Name: actor_snapshots actor_snapshots_combat_id_actor_key_key; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.actor_snapshots
    ADD CONSTRAINT actor_snapshots_combat_id_actor_key_key UNIQUE (combat_id, actor_key);


--
-- TOC entry 5004 (class 2606 OID 34483)
-- Name: actor_snapshots actor_snapshots_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.actor_snapshots
    ADD CONSTRAINT actor_snapshots_pkey PRIMARY KEY (id);


--
-- TOC entry 5006 (class 2606 OID 34502)
-- Name: combat_actions combat_actions_combat_id_round_number_sequence_no_key; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_actions
    ADD CONSTRAINT combat_actions_combat_id_round_number_sequence_no_key UNIQUE (combat_id, round_number, sequence_no);


--
-- TOC entry 5008 (class 2606 OID 34500)
-- Name: combat_actions combat_actions_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_actions
    ADD CONSTRAINT combat_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5013 (class 2606 OID 34537)
-- Name: combat_events combat_events_combat_id_sequence_no_key; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_events
    ADD CONSTRAINT combat_events_combat_id_sequence_no_key UNIQUE (combat_id, sequence_no);


--
-- TOC entry 5015 (class 2606 OID 34535)
-- Name: combat_events combat_events_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_events
    ADD CONSTRAINT combat_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4999 (class 2606 OID 34455)
-- Name: combat_instances combat_instances_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_instances
    ADD CONSTRAINT combat_instances_pkey PRIMARY KEY (id);


--
-- TOC entry 5024 (class 2606 OID 34576)
-- Name: combat_settlements combat_settlements_combat_id_key; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_settlements
    ADD CONSTRAINT combat_settlements_combat_id_key UNIQUE (combat_id);


--
-- TOC entry 5026 (class 2606 OID 34574)
-- Name: combat_settlements combat_settlements_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_settlements
    ADD CONSTRAINT combat_settlements_pkey PRIMARY KEY (id);


--
-- TOC entry 5020 (class 2606 OID 34557)
-- Name: rng_draws rng_draws_combat_id_stream_code_draw_index_key; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.rng_draws
    ADD CONSTRAINT rng_draws_combat_id_stream_code_draw_index_key UNIQUE (combat_id, stream_code, draw_index);


--
-- TOC entry 5022 (class 2606 OID 34555)
-- Name: rng_draws rng_draws_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.rng_draws
    ADD CONSTRAINT rng_draws_pkey PRIMARY KEY (id);


--
-- TOC entry 5011 (class 2606 OID 34518)
-- Name: status_instances status_instances_pkey; Type: CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.status_instances
    ADD CONSTRAINT status_instances_pkey PRIMARY KEY (id);


--
-- TOC entry 5127 (class 2606 OID 35147)
-- Name: commander_defs commander_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_defs
    ADD CONSTRAINT commander_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 5129 (class 2606 OID 35145)
-- Name: commander_defs commander_defs_pkey; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_defs
    ADD CONSTRAINT commander_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5138 (class 2606 OID 35195)
-- Name: commander_presets commander_presets_pkey; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_presets
    ADD CONSTRAINT commander_presets_pkey PRIMARY KEY (id);


--
-- TOC entry 5140 (class 2606 OID 35197)
-- Name: commander_presets commander_presets_player_id_name_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_presets
    ADD CONSTRAINT commander_presets_player_id_name_key UNIQUE (player_id, name);


--
-- TOC entry 5142 (class 2606 OID 35226)
-- Name: level_up_events level_up_events_pkey; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_pkey PRIMARY KEY (id);


--
-- TOC entry 5144 (class 2606 OID 35228)
-- Name: level_up_events level_up_events_player_commander_id_from_level_to_level_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_player_commander_id_from_level_to_level_key UNIQUE (player_commander_id, from_level, to_level);


--
-- TOC entry 5146 (class 2606 OID 35230)
-- Name: level_up_events level_up_events_player_id_idempotency_key_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_player_id_idempotency_key_key UNIQUE (player_id, idempotency_key);


--
-- TOC entry 5132 (class 2606 OID 35174)
-- Name: player_commanders player_commanders_pkey; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.player_commanders
    ADD CONSTRAINT player_commanders_pkey PRIMARY KEY (id);


--
-- TOC entry 5134 (class 2606 OID 35176)
-- Name: player_commanders player_commanders_player_id_commander_code_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.player_commanders
    ADD CONSTRAINT player_commanders_player_id_commander_code_key UNIQUE (player_id, commander_code);


--
-- TOC entry 5136 (class 2606 OID 35178)
-- Name: player_commanders player_commanders_player_id_id_key; Type: CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.player_commanders
    ADD CONSTRAINT player_commanders_player_id_id_key UNIQUE (player_id, id);


--
-- TOC entry 5249 (class 2606 OID 35984)
-- Name: entitlements entitlements_pkey; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.entitlements
    ADD CONSTRAINT entitlements_pkey PRIMARY KEY (id);


--
-- TOC entry 5234 (class 2606 OID 35921)
-- Name: offer_defs offer_defs_id_offer_code_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_defs
    ADD CONSTRAINT offer_defs_id_offer_code_key UNIQUE (id, offer_code);


--
-- TOC entry 5236 (class 2606 OID 35919)
-- Name: offer_defs offer_defs_offer_code_config_version_id_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_defs
    ADD CONSTRAINT offer_defs_offer_code_config_version_id_key UNIQUE (offer_code, config_version_id);


--
-- TOC entry 5238 (class 2606 OID 35917)
-- Name: offer_defs offer_defs_pkey; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_defs
    ADD CONSTRAINT offer_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5240 (class 2606 OID 35938)
-- Name: offer_instances offer_instances_pkey; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_instances
    ADD CONSTRAINT offer_instances_pkey PRIMARY KEY (id);


--
-- TOC entry 5243 (class 2606 OID 35960)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 5245 (class 2606 OID 35962)
-- Name: payments payments_platform_external_txn_id_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT payments_platform_external_txn_id_key UNIQUE (platform, external_txn_id);


--
-- TOC entry 5247 (class 2606 OID 35964)
-- Name: payments payments_platform_provider_event_id_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT payments_platform_provider_event_id_key UNIQUE (platform, provider_event_id);


--
-- TOC entry 5251 (class 2606 OID 36004)
-- Name: refunds refunds_payment_id_idempotency_key_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.refunds
    ADD CONSTRAINT refunds_payment_id_idempotency_key_key UNIQUE (payment_id, idempotency_key);


--
-- TOC entry 5253 (class 2606 OID 36006)
-- Name: refunds refunds_payment_id_provider_refund_id_key; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.refunds
    ADD CONSTRAINT refunds_payment_id_provider_refund_id_key UNIQUE (payment_id, provider_refund_id);


--
-- TOC entry 5255 (class 2606 OID 36002)
-- Name: refunds refunds_pkey; Type: CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (id);


--
-- TOC entry 5203 (class 2606 OID 35663)
-- Name: arena_matches arena_matches_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_pkey PRIMARY KEY (id);


--
-- TOC entry 5199 (class 2606 OID 35622)
-- Name: arena_profiles arena_profiles_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_profiles
    ADD CONSTRAINT arena_profiles_pkey PRIMARY KEY (player_id);


--
-- TOC entry 5207 (class 2606 OID 35700)
-- Name: clan_sieges clan_sieges_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.clan_sieges
    ADD CONSTRAINT clan_sieges_pkey PRIMARY KEY (id);


--
-- TOC entry 5201 (class 2606 OID 35641)
-- Name: defense_snapshots defense_snapshots_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.defense_snapshots
    ADD CONSTRAINT defense_snapshots_pkey PRIMARY KEY (id);


--
-- TOC entry 5195 (class 2606 OID 35604)
-- Name: seasons seasons_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY (id);


--
-- TOC entry 5197 (class 2606 OID 35606)
-- Name: seasons seasons_season_code_key; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.seasons
    ADD CONSTRAINT seasons_season_code_key UNIQUE (season_code);


--
-- TOC entry 5211 (class 2606 OID 35758)
-- Name: siege_attacks siege_attacks_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_pkey PRIMARY KEY (id);


--
-- TOC entry 5213 (class 2606 OID 35760)
-- Name: siege_attacks siege_attacks_siege_id_attacker_player_id_attack_token_no_key; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_siege_id_attacker_player_id_attack_token_no_key UNIQUE (siege_id, attacker_player_id, attack_token_no);


--
-- TOC entry 5209 (class 2606 OID 35728)
-- Name: siege_rosters siege_rosters_pkey; Type: CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_rosters
    ADD CONSTRAINT siege_rosters_pkey PRIMARY KEY (siege_id, clan_id, player_id);


--
-- TOC entry 4845 (class 2606 OID 33466)
-- Name: affinity_defs affinity_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.affinity_defs
    ADD CONSTRAINT affinity_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4847 (class 2606 OID 33464)
-- Name: affinity_defs affinity_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.affinity_defs
    ADD CONSTRAINT affinity_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4837 (class 2606 OID 33429)
-- Name: bloodline_defs bloodline_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.bloodline_defs
    ADD CONSTRAINT bloodline_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4839 (class 2606 OID 33427)
-- Name: bloodline_defs bloodline_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.bloodline_defs
    ADD CONSTRAINT bloodline_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4895 (class 2606 OID 33724)
-- Name: building_defs building_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.building_defs
    ADD CONSTRAINT building_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4897 (class 2606 OID 33722)
-- Name: building_defs building_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.building_defs
    ADD CONSTRAINT building_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4903 (class 2606 OID 33759)
-- Name: combat_profiles combat_profiles_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.combat_profiles
    ADD CONSTRAINT combat_profiles_pkey PRIMARY KEY (id);


--
-- TOC entry 4905 (class 2606 OID 33761)
-- Name: combat_profiles combat_profiles_profile_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.combat_profiles
    ADD CONSTRAINT combat_profiles_profile_code_config_version_id_key UNIQUE (profile_code, config_version_id);


--
-- TOC entry 4883 (class 2606 OID 33675)
-- Name: enemy_defs enemy_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.enemy_defs
    ADD CONSTRAINT enemy_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4885 (class 2606 OID 33673)
-- Name: enemy_defs enemy_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.enemy_defs
    ADD CONSTRAINT enemy_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4855 (class 2606 OID 33509)
-- Name: exploration_floor_profiles exploration_floor_profiles_config_version_id_min_floor_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.exploration_floor_profiles
    ADD CONSTRAINT exploration_floor_profiles_config_version_id_min_floor_key UNIQUE (config_version_id, min_floor);


--
-- TOC entry 4857 (class 2606 OID 33507)
-- Name: exploration_floor_profiles exploration_floor_profiles_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.exploration_floor_profiles
    ADD CONSTRAINT exploration_floor_profiles_pkey PRIMARY KEY (id);


--
-- TOC entry 4863 (class 2606 OID 33546)
-- Name: march_slot_unlock_rules march_slot_unlock_rules_config_version_id_city_hall_level_m_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.march_slot_unlock_rules
    ADD CONSTRAINT march_slot_unlock_rules_config_version_id_city_hall_level_m_key UNIQUE (config_version_id, city_hall_level_min);


--
-- TOC entry 4865 (class 2606 OID 33544)
-- Name: march_slot_unlock_rules march_slot_unlock_rules_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.march_slot_unlock_rules
    ADD CONSTRAINT march_slot_unlock_rules_pkey PRIMARY KEY (id);


--
-- TOC entry 4859 (class 2606 OID 33529)
-- Name: monster_reward_profiles monster_reward_profiles_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.monster_reward_profiles
    ADD CONSTRAINT monster_reward_profiles_pkey PRIMARY KEY (id);


--
-- TOC entry 4861 (class 2606 OID 33531)
-- Name: monster_reward_profiles monster_reward_profiles_profile_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.monster_reward_profiles
    ADD CONSTRAINT monster_reward_profiles_profile_code_config_version_id_key UNIQUE (profile_code, config_version_id);


--
-- TOC entry 4891 (class 2606 OID 33707)
-- Name: node_defs node_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.node_defs
    ADD CONSTRAINT node_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4893 (class 2606 OID 33709)
-- Name: node_defs node_defs_region_def_id_node_code_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.node_defs
    ADD CONSTRAINT node_defs_region_def_id_node_code_key UNIQUE (region_def_id, node_code);


--
-- TOC entry 4841 (class 2606 OID 33449)
-- Name: path_defs path_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_defs
    ADD CONSTRAINT path_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4843 (class 2606 OID 33447)
-- Name: path_defs path_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_defs
    ADD CONSTRAINT path_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4879 (class 2606 OID 33621)
-- Name: path_starting_techniques path_starting_techniques_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_starting_techniques
    ADD CONSTRAINT path_starting_techniques_pkey PRIMARY KEY (path_code, technique_code, config_version_id);


--
-- TOC entry 4871 (class 2606 OID 33580)
-- Name: profession_defs profession_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.profession_defs
    ADD CONSTRAINT profession_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4873 (class 2606 OID 33578)
-- Name: profession_defs profession_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.profession_defs
    ADD CONSTRAINT profession_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4833 (class 2606 OID 33411)
-- Name: race_defs race_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.race_defs
    ADD CONSTRAINT race_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4835 (class 2606 OID 33409)
-- Name: race_defs race_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.race_defs
    ADD CONSTRAINT race_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4849 (class 2606 OID 33487)
-- Name: realm_defs realm_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.realm_defs
    ADD CONSTRAINT realm_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4851 (class 2606 OID 33489)
-- Name: realm_defs realm_defs_ordinal_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.realm_defs
    ADD CONSTRAINT realm_defs_ordinal_config_version_id_key UNIQUE (ordinal, config_version_id);


--
-- TOC entry 4853 (class 2606 OID 33485)
-- Name: realm_defs realm_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.realm_defs
    ADD CONSTRAINT realm_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4887 (class 2606 OID 33692)
-- Name: region_defs region_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.region_defs
    ADD CONSTRAINT region_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4889 (class 2606 OID 33690)
-- Name: region_defs region_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.region_defs
    ADD CONSTRAINT region_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4899 (class 2606 OID 33742)
-- Name: research_defs research_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.research_defs
    ADD CONSTRAINT research_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4901 (class 2606 OID 33740)
-- Name: research_defs research_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.research_defs
    ADD CONSTRAINT research_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4867 (class 2606 OID 33564)
-- Name: sect_defs sect_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.sect_defs
    ADD CONSTRAINT sect_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4869 (class 2606 OID 33562)
-- Name: sect_defs sect_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.sect_defs
    ADD CONSTRAINT sect_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 33394)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 4831 (class 2606 OID 33396)
-- Name: tags tags_tag_code_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.tags
    ADD CONSTRAINT tags_tag_code_key UNIQUE (tag_code);


--
-- TOC entry 4875 (class 2606 OID 33608)
-- Name: technique_defs technique_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_defs
    ADD CONSTRAINT technique_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4877 (class 2606 OID 33606)
-- Name: technique_defs technique_defs_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_defs
    ADD CONSTRAINT technique_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4881 (class 2606 OID 33651)
-- Name: technique_tag_links technique_tag_links_pkey; Type: CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_tag_links
    ADD CONSTRAINT technique_tag_links_pkey PRIMARY KEY (technique_def_id, tag_id);


--
-- TOC entry 5050 (class 2606 OID 34720)
-- Name: asset_defs asset_defs_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.asset_defs
    ADD CONSTRAINT asset_defs_pkey PRIMARY KEY (code);


--
-- TOC entry 5071 (class 2606 OID 34813)
-- Name: inventory_operations inventory_operations_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.inventory_operations
    ADD CONSTRAINT inventory_operations_pkey PRIMARY KEY (id);


--
-- TOC entry 5073 (class 2606 OID 34815)
-- Name: inventory_operations inventory_operations_player_id_operation_type_idempotency_k_key; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.inventory_operations
    ADD CONSTRAINT inventory_operations_player_id_operation_type_idempotency_k_key UNIQUE (player_id, operation_type, idempotency_key);


--
-- TOC entry 5052 (class 2606 OID 34734)
-- Name: ledger_accounts ledger_accounts_owner_scope_owner_id_asset_code_key; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_accounts
    ADD CONSTRAINT ledger_accounts_owner_scope_owner_id_asset_code_key UNIQUE NULLS NOT DISTINCT (owner_scope, owner_id, asset_code);


--
-- TOC entry 5054 (class 2606 OID 34732)
-- Name: ledger_accounts ledger_accounts_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_accounts
    ADD CONSTRAINT ledger_accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 5062 (class 2606 OID 34769)
-- Name: ledger_entries ledger_entries_ledger_account_id_account_sequence_key; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_entries
    ADD CONSTRAINT ledger_entries_ledger_account_id_account_sequence_key UNIQUE (ledger_account_id, account_sequence);


--
-- TOC entry 5064 (class 2606 OID 34767)
-- Name: ledger_entries ledger_entries_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_entries
    ADD CONSTRAINT ledger_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 5056 (class 2606 OID 34752)
-- Name: ledger_operations ledger_operations_operation_type_actor_id_idempotency_key_key; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_operations
    ADD CONSTRAINT ledger_operations_operation_type_actor_id_idempotency_key_key UNIQUE NULLS NOT DISTINCT (operation_type, actor_id, idempotency_key);


--
-- TOC entry 5058 (class 2606 OID 34750)
-- Name: ledger_operations ledger_operations_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_operations
    ADD CONSTRAINT ledger_operations_pkey PRIMARY KEY (id);


--
-- TOC entry 5067 (class 2606 OID 34791)
-- Name: reward_grants reward_grants_pkey; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.reward_grants
    ADD CONSTRAINT reward_grants_pkey PRIMARY KEY (id);


--
-- TOC entry 5069 (class 2606 OID 34793)
-- Name: reward_grants reward_grants_player_id_grant_type_source_type_source_id_el_key; Type: CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.reward_grants
    ADD CONSTRAINT reward_grants_player_id_grant_type_source_type_source_id_el_key UNIQUE NULLS NOT DISTINCT (player_id, grant_type, source_type, source_id, eligibility_key);


--
-- TOC entry 4943 (class 2606 OID 34094)
-- Name: breakthrough_attempts breakthrough_attempts_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.breakthrough_attempts
    ADD CONSTRAINT breakthrough_attempts_pkey PRIMARY KEY (id);


--
-- TOC entry 4917 (class 2606 OID 33886)
-- Name: character_creation_sessions character_creation_sessions_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4919 (class 2606 OID 33888)
-- Name: character_creation_sessions character_creation_sessions_player_id_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_player_id_key UNIQUE (player_id);


--
-- TOC entry 4923 (class 2606 OID 33948)
-- Name: hero_affinities hero_affinities_hero_id_slot_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_affinities
    ADD CONSTRAINT hero_affinities_hero_id_slot_key UNIQUE (hero_id, slot);


--
-- TOC entry 4925 (class 2606 OID 33946)
-- Name: hero_affinities hero_affinities_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_affinities
    ADD CONSTRAINT hero_affinities_pkey PRIMARY KEY (hero_id, affinity_code);


--
-- TOC entry 4921 (class 2606 OID 33933)
-- Name: hero_bloodlines hero_bloodlines_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_bloodlines
    ADD CONSTRAINT hero_bloodlines_pkey PRIMARY KEY (hero_id, bloodline_code);


--
-- TOC entry 4915 (class 2606 OID 33866)
-- Name: hero_source_stats hero_source_stats_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_source_stats
    ADD CONSTRAINT hero_source_stats_pkey PRIMARY KEY (hero_id);


--
-- TOC entry 4939 (class 2606 OID 34036)
-- Name: hero_talent_allocations hero_talent_allocations_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_talent_allocations
    ADD CONSTRAINT hero_talent_allocations_pkey PRIMARY KEY (hero_id, talent_node_id);


--
-- TOC entry 4927 (class 2606 OID 33971)
-- Name: hero_techniques hero_techniques_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_techniques
    ADD CONSTRAINT hero_techniques_pkey PRIMARY KEY (hero_id, technique_code);


--
-- TOC entry 4909 (class 2606 OID 33791)
-- Name: player_heroes player_heroes_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_pkey PRIMARY KEY (id);


--
-- TOC entry 4911 (class 2606 OID 33795)
-- Name: player_heroes player_heroes_player_id_id_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_player_id_id_key UNIQUE (player_id, id);


--
-- TOC entry 4913 (class 2606 OID 33793)
-- Name: player_heroes player_heroes_player_id_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_player_id_key UNIQUE (player_id);


--
-- TOC entry 4941 (class 2606 OID 34057)
-- Name: profession_progress profession_progress_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.profession_progress
    ADD CONSTRAINT profession_progress_pkey PRIMARY KEY (hero_id, profession_code);


--
-- TOC entry 4935 (class 2606 OID 34024)
-- Name: talent_nodes talent_nodes_path_code_node_code_config_version_id_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.talent_nodes
    ADD CONSTRAINT talent_nodes_path_code_node_code_config_version_id_key UNIQUE (path_code, node_code, config_version_id);


--
-- TOC entry 4937 (class 2606 OID 34022)
-- Name: talent_nodes talent_nodes_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.talent_nodes
    ADD CONSTRAINT talent_nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 4929 (class 2606 OID 34001)
-- Name: technique_loadouts technique_loadouts_hero_id_id_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.technique_loadouts
    ADD CONSTRAINT technique_loadouts_hero_id_id_key UNIQUE (hero_id, id);


--
-- TOC entry 4931 (class 2606 OID 33999)
-- Name: technique_loadouts technique_loadouts_hero_id_name_key; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.technique_loadouts
    ADD CONSTRAINT technique_loadouts_hero_id_name_key UNIQUE (hero_id, name);


--
-- TOC entry 4933 (class 2606 OID 33997)
-- Name: technique_loadouts technique_loadouts_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.technique_loadouts
    ADD CONSTRAINT technique_loadouts_pkey PRIMARY KEY (id);


--
-- TOC entry 4946 (class 2606 OID 34118)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_pkey; Type: CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4801 (class 2606 OID 33273)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 4803 (class 2606 OID 33275)
-- Name: accounts accounts_public_id_key; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.accounts
    ADD CONSTRAINT accounts_public_id_key UNIQUE (public_id);


--
-- TOC entry 4822 (class 2606 OID 33365)
-- Name: discord_guild_bindings discord_guild_bindings_discord_guild_id_key; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_guild_bindings
    ADD CONSTRAINT discord_guild_bindings_discord_guild_id_key UNIQUE (discord_guild_id);


--
-- TOC entry 4824 (class 2606 OID 33363)
-- Name: discord_guild_bindings discord_guild_bindings_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_guild_bindings
    ADD CONSTRAINT discord_guild_bindings_pkey PRIMARY KEY (id);


--
-- TOC entry 4810 (class 2606 OID 33301)
-- Name: discord_link_events discord_link_events_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_link_events
    ADD CONSTRAINT discord_link_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4805 (class 2606 OID 33283)
-- Name: discord_links discord_links_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_links
    ADD CONSTRAINT discord_links_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 33380)
-- Name: interaction_refs interaction_refs_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.interaction_refs
    ADD CONSTRAINT interaction_refs_pkey PRIMARY KEY (id);


--
-- TOC entry 4820 (class 2606 OID 33347)
-- Name: player_settings player_settings_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.player_settings
    ADD CONSTRAINT player_settings_pkey PRIMARY KEY (player_id);


--
-- TOC entry 4814 (class 2606 OID 33329)
-- Name: players players_account_id_key; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.players
    ADD CONSTRAINT players_account_id_key UNIQUE (account_id);


--
-- TOC entry 4816 (class 2606 OID 33331)
-- Name: players players_display_name_key; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.players
    ADD CONSTRAINT players_display_name_key UNIQUE (display_name);


--
-- TOC entry 4818 (class 2606 OID 33327)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- TOC entry 4982 (class 2606 OID 34317)
-- Name: craft_jobs craft_jobs_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT craft_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4955 (class 2606 OID 34186)
-- Name: equipment_affix_combinations equipment_affix_combinations_equipment_slot_combo_code_conf_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_affix_combinations
    ADD CONSTRAINT equipment_affix_combinations_equipment_slot_combo_code_conf_key UNIQUE (equipment_slot, combo_code, config_version_id);


--
-- TOC entry 4957 (class 2606 OID 34184)
-- Name: equipment_affix_combinations equipment_affix_combinations_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_affix_combinations
    ADD CONSTRAINT equipment_affix_combinations_pkey PRIMARY KEY (id);


--
-- TOC entry 4971 (class 2606 OID 34269)
-- Name: equipment_loadouts equipment_loadouts_hero_id_name_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_loadouts
    ADD CONSTRAINT equipment_loadouts_hero_id_name_key UNIQUE (hero_id, name);


--
-- TOC entry 4973 (class 2606 OID 34267)
-- Name: equipment_loadouts equipment_loadouts_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_loadouts
    ADD CONSTRAINT equipment_loadouts_pkey PRIMARY KEY (id);


--
-- TOC entry 5276 (class 2606 OID 46122)
-- Name: equipment_set_bonuses equipment_set_bonuses_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_set_bonuses
    ADD CONSTRAINT equipment_set_bonuses_pkey PRIMARY KEY (set_code, pieces_required);


--
-- TOC entry 5274 (class 2606 OID 46092)
-- Name: equipment_set_defs equipment_set_defs_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_set_defs
    ADD CONSTRAINT equipment_set_defs_pkey PRIMARY KEY (set_code);


--
-- TOC entry 4953 (class 2606 OID 34175)
-- Name: equipment_stat_defs equipment_stat_defs_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_stat_defs
    ADD CONSTRAINT equipment_stat_defs_pkey PRIMARY KEY (code);


--
-- TOC entry 4969 (class 2606 OID 34250)
-- Name: inventory_stacks inventory_stacks_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.inventory_stacks
    ADD CONSTRAINT inventory_stacks_pkey PRIMARY KEY (player_id, item_code, binding);


--
-- TOC entry 4948 (class 2606 OID 34161)
-- Name: item_defs item_defs_code_config_version_id_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_defs
    ADD CONSTRAINT item_defs_code_config_version_id_key UNIQUE (code, config_version_id);


--
-- TOC entry 4950 (class 2606 OID 34159)
-- Name: item_defs item_defs_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_defs
    ADD CONSTRAINT item_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 4963 (class 2606 OID 34216)
-- Name: item_instances item_instances_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_pkey PRIMARY KEY (id);


--
-- TOC entry 4965 (class 2606 OID 34218)
-- Name: item_instances item_instances_player_id_id_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_player_id_id_key UNIQUE (player_id, id);


--
-- TOC entry 4980 (class 2606 OID 34300)
-- Name: player_recipes player_recipes_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.player_recipes
    ADD CONSTRAINT player_recipes_pkey PRIMARY KEY (player_id, recipe_code);


--
-- TOC entry 4959 (class 2606 OID 34197)
-- Name: rarity_policy rarity_policy_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.rarity_policy
    ADD CONSTRAINT rarity_policy_pkey PRIMARY KEY (rarity);


--
-- TOC entry 4961 (class 2606 OID 34199)
-- Name: rarity_policy rarity_policy_power_ordinal_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.rarity_policy
    ADD CONSTRAINT rarity_policy_power_ordinal_key UNIQUE (power_ordinal);


--
-- TOC entry 4976 (class 2606 OID 34287)
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- TOC entry 4978 (class 2606 OID 34289)
-- Name: recipes recipes_recipe_code_config_version_id_key; Type: CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.recipes
    ADD CONSTRAINT recipes_recipe_code_config_version_id_key UNIQUE (recipe_code, config_version_id);


--
-- TOC entry 5038 (class 2606 OID 34637)
-- Name: construction_jobs construction_jobs_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT construction_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5032 (class 2606 OID 34615)
-- Name: kingdom_buildings kingdom_buildings_kingdom_id_building_code_key; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.kingdom_buildings
    ADD CONSTRAINT kingdom_buildings_kingdom_id_building_code_key UNIQUE (kingdom_id, building_code);


--
-- TOC entry 5034 (class 2606 OID 34617)
-- Name: kingdom_buildings kingdom_buildings_kingdom_id_id_key; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.kingdom_buildings
    ADD CONSTRAINT kingdom_buildings_kingdom_id_id_key UNIQUE (kingdom_id, id);


--
-- TOC entry 5036 (class 2606 OID 34613)
-- Name: kingdom_buildings kingdom_buildings_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.kingdom_buildings
    ADD CONSTRAINT kingdom_buildings_pkey PRIMARY KEY (id);


--
-- TOC entry 5028 (class 2606 OID 34593)
-- Name: player_kingdoms player_kingdoms_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.player_kingdoms
    ADD CONSTRAINT player_kingdoms_pkey PRIMARY KEY (id);


--
-- TOC entry 5030 (class 2606 OID 34595)
-- Name: player_kingdoms player_kingdoms_player_id_key; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.player_kingdoms
    ADD CONSTRAINT player_kingdoms_player_id_key UNIQUE (player_id);


--
-- TOC entry 5042 (class 2606 OID 34666)
-- Name: player_research player_research_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.player_research
    ADD CONSTRAINT player_research_pkey PRIMARY KEY (kingdom_id, research_code);


--
-- TOC entry 5048 (class 2606 OID 34705)
-- Name: production_sites production_sites_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.production_sites
    ADD CONSTRAINT production_sites_pkey PRIMARY KEY (kingdom_id, resource_code, building_code);


--
-- TOC entry 5045 (class 2606 OID 34684)
-- Name: research_jobs research_jobs_pkey; Type: CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.research_jobs
    ADD CONSTRAINT research_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5215 (class 2606 OID 35801)
-- Name: event_defs event_defs_event_code_config_version_id_key; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.event_defs
    ADD CONSTRAINT event_defs_event_code_config_version_id_key UNIQUE (event_code, config_version_id);


--
-- TOC entry 5217 (class 2606 OID 35799)
-- Name: event_defs event_defs_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.event_defs
    ADD CONSTRAINT event_defs_pkey PRIMARY KEY (id);


--
-- TOC entry 5219 (class 2606 OID 35818)
-- Name: events events_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- TOC entry 5230 (class 2606 OID 35881)
-- Name: leaderboard_entries leaderboard_entries_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboard_entries
    ADD CONSTRAINT leaderboard_entries_pkey PRIMARY KEY (leaderboard_id, subject_id);


--
-- TOC entry 5224 (class 2606 OID 35861)
-- Name: leaderboards leaderboards_leaderboard_code_season_id_event_id_key; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboards
    ADD CONSTRAINT leaderboards_leaderboard_code_season_id_event_id_key UNIQUE NULLS NOT DISTINCT (leaderboard_code, season_id, event_id);


--
-- TOC entry 5226 (class 2606 OID 35859)
-- Name: leaderboards leaderboards_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboards
    ADD CONSTRAINT leaderboards_pkey PRIMARY KEY (id);


--
-- TOC entry 5232 (class 2606 OID 35895)
-- Name: merchant_rotations merchant_rotations_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.merchant_rotations
    ADD CONSTRAINT merchant_rotations_pkey PRIMARY KEY (id);


--
-- TOC entry 5222 (class 2606 OID 35840)
-- Name: player_event_progress player_event_progress_pkey; Type: CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.player_event_progress
    ADD CONSTRAINT player_event_progress_pkey PRIMARY KEY (event_id, player_id);


--
-- TOC entry 5168 (class 2606 OID 35392)
-- Name: gather_jobs gather_jobs_pkey; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 5156 (class 2606 OID 35298)
-- Name: hunt_loops hunt_loops_pkey; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_loops
    ADD CONSTRAINT hunt_loops_pkey PRIMARY KEY (id);


--
-- TOC entry 5159 (class 2606 OID 35335)
-- Name: hunt_rounds hunt_rounds_combat_instance_id_key; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_combat_instance_id_key UNIQUE (combat_instance_id);


--
-- TOC entry 5161 (class 2606 OID 35337)
-- Name: hunt_rounds hunt_rounds_hunt_loop_id_round_no_key; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_hunt_loop_id_round_no_key UNIQUE (hunt_loop_id, round_no);


--
-- TOC entry 5163 (class 2606 OID 35333)
-- Name: hunt_rounds hunt_rounds_pkey; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_pkey PRIMARY KEY (id);


--
-- TOC entry 5149 (class 2606 OID 35264)
-- Name: player_march_slots player_march_slots_pkey; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_pkey PRIMARY KEY (id);


--
-- TOC entry 5151 (class 2606 OID 35268)
-- Name: player_march_slots player_march_slots_player_id_id_key; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_player_id_id_key UNIQUE (player_id, id);


--
-- TOC entry 5153 (class 2606 OID 35266)
-- Name: player_march_slots player_march_slots_player_id_slot_no_key; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_player_id_slot_no_key UNIQUE (player_id, slot_no);


--
-- TOC entry 5166 (class 2606 OID 35371)
-- Name: resource_sites resource_sites_pkey; Type: CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.resource_sites
    ADD CONSTRAINT resource_sites_pkey PRIMARY KEY (id);


--
-- TOC entry 5176 (class 2606 OID 35475)
-- Name: direct_trade_offers direct_trade_offers_pkey; Type: CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.direct_trade_offers
    ADD CONSTRAINT direct_trade_offers_pkey PRIMARY KEY (id);


--
-- TOC entry 5179 (class 2606 OID 35500)
-- Name: item_transfers item_transfers_pkey; Type: CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_pkey PRIMARY KEY (id);


--
-- TOC entry 5181 (class 2606 OID 35502)
-- Name: item_transfers item_transfers_to_player_id_idempotency_key_key; Type: CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_to_player_id_idempotency_key_key UNIQUE (to_player_id, idempotency_key);


--
-- TOC entry 5173 (class 2606 OID 35436)
-- Name: listings listings_pkey; Type: CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (id);


--
-- TOC entry 5257 (class 2606 OID 36036)
-- Name: guild_media_settings guild_media_settings_pkey; Type: CONSTRAINT; Schema: media; Owner: lost_kingsland
--

ALTER TABLE ONLY media.guild_media_settings
    ADD CONSTRAINT guild_media_settings_pkey PRIMARY KEY (guild_binding_id);


--
-- TOC entry 5269 (class 2606 OID 36104)
-- Name: abuse_signals abuse_signals_pkey; Type: CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.abuse_signals
    ADD CONSTRAINT abuse_signals_pkey PRIMARY KEY (id);


--
-- TOC entry 5259 (class 2606 OID 36048)
-- Name: audit_logs audit_logs_pkey; Type: CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.audit_logs
    ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id, created_at);


--
-- TOC entry 5263 (class 2606 OID 36054)
-- Name: audit_logs_default audit_logs_default_pkey; Type: CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.audit_logs_default
    ADD CONSTRAINT audit_logs_default_pkey PRIMARY KEY (id, created_at);


--
-- TOC entry 5265 (class 2606 OID 36069)
-- Name: compensation_cases compensation_cases_pkey; Type: CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.compensation_cases
    ADD CONSTRAINT compensation_cases_pkey PRIMARY KEY (id);


--
-- TOC entry 5267 (class 2606 OID 36089)
-- Name: player_sanctions player_sanctions_pkey; Type: CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.player_sanctions
    ADD CONSTRAINT player_sanctions_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 33204)
-- Name: config_versions config_versions_pkey; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.config_versions
    ADD CONSTRAINT config_versions_pkey PRIMARY KEY (id);


--
-- TOC entry 4784 (class 2606 OID 33206)
-- Name: config_versions config_versions_version_code_key; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.config_versions
    ADD CONSTRAINT config_versions_version_code_key UNIQUE (version_code);


--
-- TOC entry 4786 (class 2606 OID 33218)
-- Name: feature_flags feature_flags_flag_key_config_version_id_key; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.feature_flags
    ADD CONSTRAINT feature_flags_flag_key_config_version_id_key UNIQUE (flag_key, config_version_id);


--
-- TOC entry 4788 (class 2606 OID 33216)
-- Name: feature_flags feature_flags_pkey; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.feature_flags
    ADD CONSTRAINT feature_flags_pkey PRIMARY KEY (id);


--
-- TOC entry 4790 (class 2606 OID 33234)
-- Name: idempotency_records idempotency_records_actor_scope_actor_id_operation_type_ide_key; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.idempotency_records
    ADD CONSTRAINT idempotency_records_actor_scope_actor_id_operation_type_ide_key UNIQUE NULLS NOT DISTINCT (actor_scope, actor_id, operation_type, idempotency_key);


--
-- TOC entry 4792 (class 2606 OID 33232)
-- Name: idempotency_records idempotency_records_pkey; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.idempotency_records
    ADD CONSTRAINT idempotency_records_pkey PRIMARY KEY (id);


--
-- TOC entry 4796 (class 2606 OID 33246)
-- Name: outbox_events outbox_events_pkey; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.outbox_events
    ADD CONSTRAINT outbox_events_pkey PRIMARY KEY (id);


--
-- TOC entry 4799 (class 2606 OID 33259)
-- Name: scheduled_actions scheduled_actions_pkey; Type: CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.scheduled_actions
    ADD CONSTRAINT scheduled_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 5271 (class 2606 OID 37123)
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: public; Owner: lost_kingsland
--

ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- TOC entry 4987 (class 1259 OID 34373)
-- Name: ix_exploration_highest_floor; Type: INDEX; Schema: adventure; Owner: lost_kingsland
--

CREATE INDEX ix_exploration_highest_floor ON adventure.player_exploration_progress USING btree (highest_floor DESC);


--
-- TOC entry 4992 (class 1259 OID 36167)
-- Name: ix_runs_player_time; Type: INDEX; Schema: adventure; Owner: lost_kingsland
--

CREATE INDEX ix_runs_player_time ON adventure.adventure_runs USING btree (player_id, started_at DESC);


--
-- TOC entry 4993 (class 1259 OID 34409)
-- Name: ux_active_run_per_player; Type: INDEX; Schema: adventure; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_active_run_per_player ON adventure.adventure_runs USING btree (player_id) WHERE (status = ANY (ARRAY['ACTIVE'::adventure.run_status, 'PAUSED'::adventure.run_status]));


--
-- TOC entry 5193 (class 1259 OID 36170)
-- Name: ix_boss_attempts_player; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_boss_attempts_player ON clan.clan_boss_attempts USING btree (player_id, reserved_at DESC);


--
-- TOC entry 5188 (class 1259 OID 35560)
-- Name: ix_clan_boss_open; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_clan_boss_open ON clan.clan_bosses USING btree (clan_id, opens_at, closes_at);


--
-- TOC entry 5125 (class 1259 OID 35127)
-- Name: ix_clan_building_contrib; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_clan_building_contrib ON clan.clan_building_contributions USING btree (clan_id, clan_building_id, created_at DESC);


--
-- TOC entry 5122 (class 1259 OID 35214)
-- Name: ix_clan_buildings_clan; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_clan_buildings_clan ON clan.clan_buildings USING btree (clan_id, building_code);


--
-- TOC entry 5105 (class 1259 OID 35002)
-- Name: ix_clan_donation_member_day; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_clan_donation_member_day ON clan.clan_donations USING btree (clan_id, player_id, created_at DESC);


--
-- TOC entry 5086 (class 1259 OID 34873)
-- Name: ix_clan_members_clan_rank; Type: INDEX; Schema: clan; Owner: lost_kingsland
--

CREATE INDEX ix_clan_members_clan_rank ON clan.clan_members USING btree (clan_id, rank);


--
-- TOC entry 5016 (class 1259 OID 34543)
-- Name: ix_combat_events_combat_seq; Type: INDEX; Schema: combat; Owner: lost_kingsland
--

CREATE INDEX ix_combat_events_combat_seq ON combat.combat_events USING btree (combat_id, sequence_no);


--
-- TOC entry 5017 (class 1259 OID 36177)
-- Name: ix_combat_events_time; Type: INDEX; Schema: combat; Owner: lost_kingsland
--

CREATE INDEX ix_combat_events_time ON combat.combat_events USING btree (created_at DESC);


--
-- TOC entry 5000 (class 1259 OID 34471)
-- Name: ix_combat_player_status; Type: INDEX; Schema: combat; Owner: lost_kingsland
--

CREATE INDEX ix_combat_player_status ON combat.combat_instances USING btree (player_id, status, created_at DESC);


--
-- TOC entry 5018 (class 1259 OID 34563)
-- Name: ix_rng_draws_combat_stream; Type: INDEX; Schema: combat; Owner: lost_kingsland
--

CREATE INDEX ix_rng_draws_combat_stream ON combat.rng_draws USING btree (combat_id, stream_code, draw_index);


--
-- TOC entry 5009 (class 1259 OID 34524)
-- Name: ix_status_active; Type: INDEX; Schema: combat; Owner: lost_kingsland
--

CREATE INDEX ix_status_active ON combat.status_instances USING btree (combat_id, target_key) WHERE (active = true);


--
-- TOC entry 5130 (class 1259 OID 35213)
-- Name: ix_commander_player; Type: INDEX; Schema: commander; Owner: lost_kingsland
--

CREATE INDEX ix_commander_player ON commander.player_commanders USING btree (player_id, status);


--
-- TOC entry 5241 (class 1259 OID 36174)
-- Name: ix_payment_player_time; Type: INDEX; Schema: commerce; Owner: lost_kingsland
--

CREATE INDEX ix_payment_player_time ON commerce.payments USING btree (player_id, received_at DESC);


--
-- TOC entry 5204 (class 1259 OID 36171)
-- Name: ix_arena_matches_attacker; Type: INDEX; Schema: competitive; Owner: lost_kingsland
--

CREATE INDEX ix_arena_matches_attacker ON competitive.arena_matches USING btree (attacker_player_id, created_at DESC);


--
-- TOC entry 5205 (class 1259 OID 36172)
-- Name: ix_arena_matches_defender; Type: INDEX; Schema: competitive; Owner: lost_kingsland
--

CREATE INDEX ix_arena_matches_defender ON competitive.arena_matches USING btree (defender_player_id, created_at DESC);


--
-- TOC entry 5059 (class 1259 OID 34781)
-- Name: ix_ledger_account_time; Type: INDEX; Schema: economy; Owner: lost_kingsland
--

CREATE INDEX ix_ledger_account_time ON economy.ledger_entries USING btree (ledger_account_id, created_at DESC);


--
-- TOC entry 5060 (class 1259 OID 34780)
-- Name: ix_ledger_operation; Type: INDEX; Schema: economy; Owner: lost_kingsland
--

CREATE INDEX ix_ledger_operation ON economy.ledger_entries USING btree (operation_id);


--
-- TOC entry 5065 (class 1259 OID 36178)
-- Name: ix_reward_grants_player_status; Type: INDEX; Schema: economy; Owner: lost_kingsland
--

CREATE INDEX ix_reward_grants_player_status ON economy.reward_grants USING btree (player_id, status, created_at DESC);


--
-- TOC entry 4906 (class 1259 OID 36166)
-- Name: ix_hero_realm; Type: INDEX; Schema: hero; Owner: lost_kingsland
--

CREATE INDEX ix_hero_realm ON hero.player_heroes USING btree (realm_code, realm_minor_stage);


--
-- TOC entry 4907 (class 1259 OID 33816)
-- Name: ix_player_heroes_player; Type: INDEX; Schema: hero; Owner: lost_kingsland
--

CREATE INDEX ix_player_heroes_player ON hero.player_heroes USING btree (player_id);


--
-- TOC entry 4944 (class 1259 OID 34144)
-- Name: ix_voice_cultivation_player_time; Type: INDEX; Schema: hero; Owner: lost_kingsland
--

CREATE INDEX ix_voice_cultivation_player_time ON hero.voice_cultivation_sessions USING btree (player_id, joined_at DESC);


--
-- TOC entry 4811 (class 1259 OID 33312)
-- Name: ix_discord_link_events_account_time; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE INDEX ix_discord_link_events_account_time ON identity.discord_link_events USING btree (account_id, created_at DESC);


--
-- TOC entry 4806 (class 1259 OID 36175)
-- Name: ix_discord_links_account; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE INDEX ix_discord_links_account ON identity.discord_links USING btree (account_id);


--
-- TOC entry 4827 (class 1259 OID 33386)
-- Name: ix_interaction_refs_expiry; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE INDEX ix_interaction_refs_expiry ON identity.interaction_refs USING btree (expires_at);


--
-- TOC entry 4812 (class 1259 OID 36165)
-- Name: ix_player_name; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE INDEX ix_player_name ON identity.players USING btree (display_name);


--
-- TOC entry 4807 (class 1259 OID 33290)
-- Name: ux_discord_active_link_per_user; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_discord_active_link_per_user ON identity.discord_links USING btree (discord_user_id) WHERE (revoked_at IS NULL);


--
-- TOC entry 4808 (class 1259 OID 33289)
-- Name: ux_discord_primary_link_per_account; Type: INDEX; Schema: identity; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_discord_primary_link_per_account ON identity.discord_links USING btree (account_id) WHERE ((is_primary = true) AND (revoked_at IS NULL));


--
-- TOC entry 4983 (class 1259 OID 34338)
-- Name: ix_craft_jobs_due; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_craft_jobs_due ON inventory.craft_jobs USING btree (completes_at) WHERE (status = 'RUNNING'::platform.queue_status);


--
-- TOC entry 4984 (class 1259 OID 36176)
-- Name: ix_craft_jobs_player_status; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_craft_jobs_player_status ON inventory.craft_jobs USING btree (player_id, status, completes_at);


--
-- TOC entry 5277 (class 1259 OID 46128)
-- Name: ix_equipment_set_bonuses_enabled; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_equipment_set_bonuses_enabled ON inventory.equipment_set_bonuses USING btree (set_code, pieces_required) WHERE (enabled = true);


--
-- TOC entry 4951 (class 1259 OID 46083)
-- Name: ix_item_defs_set_code; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_item_defs_set_code ON inventory.item_defs USING btree (set_code) WHERE (set_code IS NOT NULL);


--
-- TOC entry 4966 (class 1259 OID 34240)
-- Name: ix_item_instances_hero; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_item_instances_hero ON inventory.item_instances USING btree (hero_id) WHERE (hero_id IS NOT NULL);


--
-- TOC entry 4967 (class 1259 OID 34239)
-- Name: ix_item_instances_owner; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE INDEX ix_item_instances_owner ON inventory.item_instances USING btree (player_id, state, acquired_at DESC);


--
-- TOC entry 4974 (class 1259 OID 34275)
-- Name: ux_equipment_loadout_active_per_hero; Type: INDEX; Schema: inventory; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_equipment_loadout_active_per_hero ON inventory.equipment_loadouts USING btree (hero_id) WHERE (is_active = true);


--
-- TOC entry 5039 (class 1259 OID 36168)
-- Name: ix_construction_due; Type: INDEX; Schema: kingdom; Owner: lost_kingsland
--

CREATE INDEX ix_construction_due ON kingdom.construction_jobs USING btree (completes_at) WHERE (status = 'RUNNING'::platform.queue_status);


--
-- TOC entry 5043 (class 1259 OID 36169)
-- Name: ix_research_due; Type: INDEX; Schema: kingdom; Owner: lost_kingsland
--

CREATE INDEX ix_research_due ON kingdom.research_jobs USING btree (completes_at) WHERE (status = 'RUNNING'::platform.queue_status);


--
-- TOC entry 5040 (class 1259 OID 34658)
-- Name: ux_construction_slot_running; Type: INDEX; Schema: kingdom; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_construction_slot_running ON kingdom.construction_jobs USING btree (kingdom_id, queue_slot) WHERE (status = 'RUNNING'::platform.queue_status);


--
-- TOC entry 5046 (class 1259 OID 34695)
-- Name: ux_research_running; Type: INDEX; Schema: kingdom; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_research_running ON kingdom.research_jobs USING btree (kingdom_id) WHERE (status = 'RUNNING'::platform.queue_status);


--
-- TOC entry 5220 (class 1259 OID 36173)
-- Name: ix_events_window; Type: INDEX; Schema: liveops; Owner: lost_kingsland
--

CREATE INDEX ix_events_window ON liveops.events USING btree (starts_at, ends_at, status);


--
-- TOC entry 5227 (class 1259 OID 36179)
-- Name: ix_leaderboard_entries_score; Type: INDEX; Schema: liveops; Owner: lost_kingsland
--

CREATE INDEX ix_leaderboard_entries_score ON liveops.leaderboard_entries USING btree (leaderboard_id, score DESC);


--
-- TOC entry 5228 (class 1259 OID 35887)
-- Name: ix_leaderboard_score; Type: INDEX; Schema: liveops; Owner: lost_kingsland
--

CREATE INDEX ix_leaderboard_score ON liveops.leaderboard_entries USING btree (leaderboard_id, score DESC, subject_id);


--
-- TOC entry 5147 (class 1259 OID 35284)
-- Name: ix_march_slots_player_status; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE INDEX ix_march_slots_player_status ON march.player_march_slots USING btree (player_id, status, slot_no);


--
-- TOC entry 5164 (class 1259 OID 35377)
-- Name: ix_resource_site_find; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE INDEX ix_resource_site_find ON march.resource_sites USING btree (resource_code, tier, status, remaining_amount) WHERE ((status = 'AVAILABLE'::march.resource_site_status) AND (remaining_amount > (0)::numeric));


--
-- TOC entry 5169 (class 1259 OID 35424)
-- Name: ux_gather_active_site; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_gather_active_site ON march.gather_jobs USING btree (resource_site_id) WHERE ((status)::text = ANY ((ARRAY['RUNNING'::character varying, 'WITHDRAW_REQUESTED'::character varying])::text[]));


--
-- TOC entry 5170 (class 1259 OID 35423)
-- Name: ux_gather_active_slot; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_gather_active_slot ON march.gather_jobs USING btree (march_slot_id) WHERE ((status)::text = ANY ((ARRAY['RUNNING'::character varying, 'WITHDRAW_REQUESTED'::character varying])::text[]));


--
-- TOC entry 5157 (class 1259 OID 35319)
-- Name: ux_hunt_loop_active_slot; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_hunt_loop_active_slot ON march.hunt_loops USING btree (march_slot_id) WHERE ((status)::text = ANY ((ARRAY['RUNNING'::character varying, 'STOP_REQUESTED'::character varying])::text[]));


--
-- TOC entry 5154 (class 1259 OID 35285)
-- Name: ux_march_active_commander; Type: INDEX; Schema: march; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_march_active_commander ON march.player_march_slots USING btree (commander_id) WHERE ((commander_id IS NOT NULL) AND (status = ANY (ARRAY['HUNTING'::march.march_status, 'GATHERING'::march.march_status, 'STOPPING'::march.march_status])));


--
-- TOC entry 5171 (class 1259 OID 35463)
-- Name: ix_market_browse; Type: INDEX; Schema: market; Owner: lost_kingsland
--

CREATE INDEX ix_market_browse ON market.listings USING btree (status, listed_rarity, listed_item_level, created_at DESC);


--
-- TOC entry 5177 (class 1259 OID 35491)
-- Name: ux_direct_trade_pending_item; Type: INDEX; Schema: market; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_direct_trade_pending_item ON market.direct_trade_offers USING btree (item_instance_id) WHERE (status = 'PENDING'::market.trade_status);


--
-- TOC entry 5174 (class 1259 OID 35462)
-- Name: ux_market_active_item; Type: INDEX; Schema: market; Owner: lost_kingsland
--

CREATE UNIQUE INDEX ux_market_active_item ON market.listings USING btree (item_instance_id) WHERE (status = 'ACTIVE'::market.listing_status);


--
-- TOC entry 5260 (class 1259 OID 36057)
-- Name: ix_audit_object; Type: INDEX; Schema: ops; Owner: lost_kingsland
--

CREATE INDEX ix_audit_object ON ONLY ops.audit_logs USING btree (object_type, object_id, created_at DESC);


--
-- TOC entry 5261 (class 1259 OID 36058)
-- Name: audit_logs_default_object_type_object_id_created_at_idx; Type: INDEX; Schema: ops; Owner: lost_kingsland
--

CREATE INDEX audit_logs_default_object_type_object_id_created_at_idx ON ops.audit_logs_default USING btree (object_type, object_id, created_at DESC);


--
-- TOC entry 4793 (class 1259 OID 33235)
-- Name: ix_idempotency_expiry; Type: INDEX; Schema: platform; Owner: lost_kingsland
--

CREATE INDEX ix_idempotency_expiry ON platform.idempotency_records USING btree (expires_at) WHERE (expires_at IS NOT NULL);


--
-- TOC entry 4794 (class 1259 OID 33247)
-- Name: ix_outbox_unpublished; Type: INDEX; Schema: platform; Owner: lost_kingsland
--

CREATE INDEX ix_outbox_unpublished ON platform.outbox_events USING btree (created_at) WHERE (published_at IS NULL);


--
-- TOC entry 4797 (class 1259 OID 33260)
-- Name: ix_scheduled_due; Type: INDEX; Schema: platform; Owner: lost_kingsland
--

CREATE INDEX ix_scheduled_due ON platform.scheduled_actions USING btree (execute_at, id) WHERE (status = 'PENDING'::platform.job_status);


--
-- TOC entry 5272 (class 1259 OID 37124)
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: public; Owner: lost_kingsland
--

CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);


--
-- TOC entry 5278 (class 0 OID 0)
-- Name: audit_logs_default_object_type_object_id_created_at_idx; Type: INDEX ATTACH; Schema: ops; Owner: lost_kingsland
--

ALTER INDEX ops.ix_audit_object ATTACH PARTITION ops.audit_logs_default_object_type_object_id_created_at_idx;


--
-- TOC entry 5279 (class 0 OID 0)
-- Name: audit_logs_default_pkey; Type: INDEX ATTACH; Schema: ops; Owner: lost_kingsland
--

ALTER INDEX ops.audit_logs_pkey ATTACH PARTITION ops.audit_logs_default_pkey;


--
-- TOC entry 5368 (class 2606 OID 34394)
-- Name: adventure_runs adventure_runs_hero_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.adventure_runs
    ADD CONSTRAINT adventure_runs_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id);


--
-- TOC entry 5369 (class 2606 OID 34389)
-- Name: adventure_runs adventure_runs_player_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.adventure_runs
    ADD CONSTRAINT adventure_runs_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5370 (class 2606 OID 34404)
-- Name: adventure_runs adventure_runs_player_id_hero_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.adventure_runs
    ADD CONSTRAINT adventure_runs_player_id_hero_id_fkey FOREIGN KEY (player_id, hero_id) REFERENCES hero.player_heroes(player_id, id);


--
-- TOC entry 5371 (class 2606 OID 34399)
-- Name: adventure_runs adventure_runs_region_code_region_config_version_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.adventure_runs
    ADD CONSTRAINT adventure_runs_region_code_region_config_version_fkey FOREIGN KEY (region_code, region_config_version) REFERENCES content.region_defs(code, config_version_id);


--
-- TOC entry 5373 (class 2606 OID 34434)
-- Name: energy_balances energy_balances_player_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.energy_balances
    ADD CONSTRAINT energy_balances_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5367 (class 2606 OID 34368)
-- Name: player_exploration_progress player_exploration_progress_player_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.player_exploration_progress
    ADD CONSTRAINT player_exploration_progress_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5366 (class 2606 OID 34351)
-- Name: player_region_progress player_region_progress_player_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.player_region_progress
    ADD CONSTRAINT player_region_progress_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5372 (class 2606 OID 34418)
-- Name: run_node_states run_node_states_run_id_fkey; Type: FK CONSTRAINT; Schema: adventure; Owner: lost_kingsland
--

ALTER TABLE ONLY adventure.run_node_states
    ADD CONSTRAINT run_node_states_run_id_fkey FOREIGN KEY (run_id) REFERENCES adventure.adventure_runs(id) ON DELETE CASCADE;


--
-- TOC entry 5408 (class 2606 OID 34897)
-- Name: clan_applications clan_applications_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_applications
    ADD CONSTRAINT clan_applications_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5409 (class 2606 OID 34902)
-- Name: clan_applications clan_applications_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_applications
    ADD CONSTRAINT clan_applications_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5410 (class 2606 OID 34907)
-- Name: clan_applications clan_applications_resolved_by_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_applications
    ADD CONSTRAINT clan_applications_resolved_by_fkey FOREIGN KEY (resolved_by) REFERENCES identity.players(id);


--
-- TOC entry 5472 (class 2606 OID 35573)
-- Name: clan_boss_attempts clan_boss_attempts_clan_boss_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_clan_boss_id_fkey FOREIGN KEY (clan_boss_id) REFERENCES clan.clan_bosses(id) ON DELETE CASCADE;


--
-- TOC entry 5473 (class 2606 OID 35588)
-- Name: clan_boss_attempts clan_boss_attempts_combat_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id);


--
-- TOC entry 5474 (class 2606 OID 35583)
-- Name: clan_boss_attempts clan_boss_attempts_hero_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id);


--
-- TOC entry 5475 (class 2606 OID 35578)
-- Name: clan_boss_attempts clan_boss_attempts_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_attempts
    ADD CONSTRAINT clan_boss_attempts_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5469 (class 2606 OID 35533)
-- Name: clan_boss_defs clan_boss_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_boss_defs
    ADD CONSTRAINT clan_boss_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5470 (class 2606 OID 35550)
-- Name: clan_bosses clan_bosses_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_bosses
    ADD CONSTRAINT clan_bosses_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5471 (class 2606 OID 35555)
-- Name: clan_bosses clan_bosses_config_version_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_bosses
    ADD CONSTRAINT clan_bosses_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5426 (class 2606 OID 35112)
-- Name: clan_building_contributions clan_building_contributions_clan_building_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_contributions
    ADD CONSTRAINT clan_building_contributions_clan_building_id_fkey FOREIGN KEY (clan_building_id) REFERENCES clan.clan_buildings(id) ON DELETE CASCADE;


--
-- TOC entry 5427 (class 2606 OID 35107)
-- Name: clan_building_contributions clan_building_contributions_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_contributions
    ADD CONSTRAINT clan_building_contributions_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5428 (class 2606 OID 35122)
-- Name: clan_building_contributions clan_building_contributions_operation_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_contributions
    ADD CONSTRAINT clan_building_contributions_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5429 (class 2606 OID 35117)
-- Name: clan_building_contributions clan_building_contributions_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_contributions
    ADD CONSTRAINT clan_building_contributions_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5424 (class 2606 OID 35071)
-- Name: clan_building_defs clan_building_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_building_defs
    ADD CONSTRAINT clan_building_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5425 (class 2606 OID 35094)
-- Name: clan_buildings clan_buildings_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_buildings
    ADD CONSTRAINT clan_buildings_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5417 (class 2606 OID 34987)
-- Name: clan_donations clan_donations_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_donations
    ADD CONSTRAINT clan_donations_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id);


--
-- TOC entry 5418 (class 2606 OID 34997)
-- Name: clan_donations clan_donations_operation_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_donations
    ADD CONSTRAINT clan_donations_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5419 (class 2606 OID 34992)
-- Name: clan_donations clan_donations_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_donations
    ADD CONSTRAINT clan_donations_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5413 (class 2606 OID 34945)
-- Name: clan_help_actions clan_help_actions_helper_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_actions
    ADD CONSTRAINT clan_help_actions_helper_player_id_fkey FOREIGN KEY (helper_player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5414 (class 2606 OID 34940)
-- Name: clan_help_actions clan_help_actions_request_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_actions
    ADD CONSTRAINT clan_help_actions_request_id_fkey FOREIGN KEY (request_id) REFERENCES clan.clan_help_requests(id) ON DELETE CASCADE;


--
-- TOC entry 5411 (class 2606 OID 34923)
-- Name: clan_help_requests clan_help_requests_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_requests
    ADD CONSTRAINT clan_help_requests_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5412 (class 2606 OID 34928)
-- Name: clan_help_requests clan_help_requests_requester_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_help_requests
    ADD CONSTRAINT clan_help_requests_requester_player_id_fkey FOREIGN KEY (requester_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5405 (class 2606 OID 34863)
-- Name: clan_members clan_members_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_members
    ADD CONSTRAINT clan_members_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5406 (class 2606 OID 34868)
-- Name: clan_members clan_members_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_members
    ADD CONSTRAINT clan_members_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5407 (class 2606 OID 34880)
-- Name: clan_permissions clan_permissions_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_permissions
    ADD CONSTRAINT clan_permissions_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5422 (class 2606 OID 35043)
-- Name: clan_quest_contributions clan_quest_contributions_clan_quest_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_contributions
    ADD CONSTRAINT clan_quest_contributions_clan_quest_id_fkey FOREIGN KEY (clan_quest_id) REFERENCES clan.clan_quests(id) ON DELETE CASCADE;


--
-- TOC entry 5423 (class 2606 OID 35048)
-- Name: clan_quest_contributions clan_quest_contributions_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_contributions
    ADD CONSTRAINT clan_quest_contributions_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5420 (class 2606 OID 35013)
-- Name: clan_quest_defs clan_quest_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quest_defs
    ADD CONSTRAINT clan_quest_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5421 (class 2606 OID 35029)
-- Name: clan_quests clan_quests_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_quests
    ADD CONSTRAINT clan_quests_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5415 (class 2606 OID 34961)
-- Name: clan_tech_defs clan_tech_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_tech_defs
    ADD CONSTRAINT clan_tech_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5416 (class 2606 OID 34974)
-- Name: clan_technology clan_technology_clan_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clan_technology
    ADD CONSTRAINT clan_technology_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id) ON DELETE CASCADE;


--
-- TOC entry 5404 (class 2606 OID 34843)
-- Name: clans clans_leader_player_id_fkey; Type: FK CONSTRAINT; Schema: clan; Owner: lost_kingsland
--

ALTER TABLE ONLY clan.clans
    ADD CONSTRAINT clans_leader_player_id_fkey FOREIGN KEY (leader_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5377 (class 2606 OID 34486)
-- Name: actor_snapshots actor_snapshots_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.actor_snapshots
    ADD CONSTRAINT actor_snapshots_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id) ON DELETE CASCADE;


--
-- TOC entry 5378 (class 2606 OID 34503)
-- Name: combat_actions combat_actions_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_actions
    ADD CONSTRAINT combat_actions_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id) ON DELETE CASCADE;


--
-- TOC entry 5380 (class 2606 OID 34538)
-- Name: combat_events combat_events_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_events
    ADD CONSTRAINT combat_events_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id) ON DELETE CASCADE;


--
-- TOC entry 5374 (class 2606 OID 34466)
-- Name: combat_instances combat_instances_config_version_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_instances
    ADD CONSTRAINT combat_instances_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5375 (class 2606 OID 34461)
-- Name: combat_instances combat_instances_hero_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_instances
    ADD CONSTRAINT combat_instances_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE SET NULL;


--
-- TOC entry 5376 (class 2606 OID 34456)
-- Name: combat_instances combat_instances_player_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_instances
    ADD CONSTRAINT combat_instances_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE SET NULL;


--
-- TOC entry 5382 (class 2606 OID 34577)
-- Name: combat_settlements combat_settlements_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_settlements
    ADD CONSTRAINT combat_settlements_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id);


--
-- TOC entry 5383 (class 2606 OID 36125)
-- Name: combat_settlements fk_combat_settlement_reward_operation; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.combat_settlements
    ADD CONSTRAINT fk_combat_settlement_reward_operation FOREIGN KEY (reward_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5381 (class 2606 OID 34558)
-- Name: rng_draws rng_draws_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.rng_draws
    ADD CONSTRAINT rng_draws_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id) ON DELETE CASCADE;


--
-- TOC entry 5379 (class 2606 OID 34519)
-- Name: status_instances status_instances_combat_id_fkey; Type: FK CONSTRAINT; Schema: combat; Owner: lost_kingsland
--

ALTER TABLE ONLY combat.status_instances
    ADD CONSTRAINT status_instances_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id) ON DELETE CASCADE;


--
-- TOC entry 5430 (class 2606 OID 35148)
-- Name: commander_defs commander_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_defs
    ADD CONSTRAINT commander_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5432 (class 2606 OID 35198)
-- Name: commander_presets commander_presets_player_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_presets
    ADD CONSTRAINT commander_presets_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5433 (class 2606 OID 35203)
-- Name: commander_presets commander_presets_primary_commander_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_presets
    ADD CONSTRAINT commander_presets_primary_commander_id_fkey FOREIGN KEY (primary_commander_id) REFERENCES commander.player_commanders(id);


--
-- TOC entry 5434 (class 2606 OID 35208)
-- Name: commander_presets commander_presets_secondary_commander_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.commander_presets
    ADD CONSTRAINT commander_presets_secondary_commander_id_fkey FOREIGN KEY (secondary_commander_id) REFERENCES commander.player_commanders(id);


--
-- TOC entry 5435 (class 2606 OID 35241)
-- Name: level_up_events level_up_events_ledger_operation_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_ledger_operation_id_fkey FOREIGN KEY (ledger_operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5436 (class 2606 OID 35231)
-- Name: level_up_events level_up_events_player_commander_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_player_commander_id_fkey FOREIGN KEY (player_commander_id) REFERENCES commander.player_commanders(id) ON DELETE CASCADE;


--
-- TOC entry 5437 (class 2606 OID 35236)
-- Name: level_up_events level_up_events_player_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5438 (class 2606 OID 35246)
-- Name: level_up_events level_up_events_player_id_player_commander_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.level_up_events
    ADD CONSTRAINT level_up_events_player_id_player_commander_id_fkey FOREIGN KEY (player_id, player_commander_id) REFERENCES commander.player_commanders(player_id, id);


--
-- TOC entry 5431 (class 2606 OID 35179)
-- Name: player_commanders player_commanders_player_id_fkey; Type: FK CONSTRAINT; Schema: commander; Owner: lost_kingsland
--

ALTER TABLE ONLY commander.player_commanders
    ADD CONSTRAINT player_commanders_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5516 (class 2606 OID 35985)
-- Name: entitlements entitlements_player_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.entitlements
    ADD CONSTRAINT entitlements_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5517 (class 2606 OID 35990)
-- Name: entitlements entitlements_source_payment_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.entitlements
    ADD CONSTRAINT entitlements_source_payment_id_fkey FOREIGN KEY (source_payment_id) REFERENCES commerce.payments(id);


--
-- TOC entry 5513 (class 2606 OID 36160)
-- Name: payments fk_payment_entitlement_operation; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT fk_payment_entitlement_operation FOREIGN KEY (entitlement_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5510 (class 2606 OID 35922)
-- Name: offer_defs offer_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_defs
    ADD CONSTRAINT offer_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5511 (class 2606 OID 35944)
-- Name: offer_instances offer_instances_offer_def_id_offer_code_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_instances
    ADD CONSTRAINT offer_instances_offer_def_id_offer_code_fkey FOREIGN KEY (offer_def_id, offer_code) REFERENCES commerce.offer_defs(id, offer_code);


--
-- TOC entry 5512 (class 2606 OID 35939)
-- Name: offer_instances offer_instances_player_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.offer_instances
    ADD CONSTRAINT offer_instances_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5514 (class 2606 OID 35970)
-- Name: payments payments_offer_instance_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT payments_offer_instance_id_fkey FOREIGN KEY (offer_instance_id) REFERENCES commerce.offer_instances(id);


--
-- TOC entry 5515 (class 2606 OID 35965)
-- Name: payments payments_player_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.payments
    ADD CONSTRAINT payments_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5518 (class 2606 OID 36007)
-- Name: refunds refunds_payment_id_fkey; Type: FK CONSTRAINT; Schema: commerce; Owner: lost_kingsland
--

ALTER TABLE ONLY commerce.refunds
    ADD CONSTRAINT refunds_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES commerce.payments(id);


--
-- TOC entry 5482 (class 2606 OID 35669)
-- Name: arena_matches arena_matches_attacker_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_attacker_player_id_fkey FOREIGN KEY (attacker_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5483 (class 2606 OID 35684)
-- Name: arena_matches arena_matches_combat_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id);


--
-- TOC entry 5484 (class 2606 OID 35674)
-- Name: arena_matches arena_matches_defender_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_defender_player_id_fkey FOREIGN KEY (defender_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5485 (class 2606 OID 35679)
-- Name: arena_matches arena_matches_defense_snapshot_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_defense_snapshot_id_fkey FOREIGN KEY (defense_snapshot_id) REFERENCES competitive.defense_snapshots(id);


--
-- TOC entry 5486 (class 2606 OID 35664)
-- Name: arena_matches arena_matches_season_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_matches
    ADD CONSTRAINT arena_matches_season_id_fkey FOREIGN KEY (season_id) REFERENCES competitive.seasons(id);


--
-- TOC entry 5477 (class 2606 OID 35623)
-- Name: arena_profiles arena_profiles_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_profiles
    ADD CONSTRAINT arena_profiles_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5478 (class 2606 OID 35628)
-- Name: arena_profiles arena_profiles_season_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_profiles
    ADD CONSTRAINT arena_profiles_season_id_fkey FOREIGN KEY (season_id) REFERENCES competitive.seasons(id);


--
-- TOC entry 5487 (class 2606 OID 35706)
-- Name: clan_sieges clan_sieges_clan_a_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.clan_sieges
    ADD CONSTRAINT clan_sieges_clan_a_id_fkey FOREIGN KEY (clan_a_id) REFERENCES clan.clans(id);


--
-- TOC entry 5488 (class 2606 OID 35711)
-- Name: clan_sieges clan_sieges_clan_b_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.clan_sieges
    ADD CONSTRAINT clan_sieges_clan_b_id_fkey FOREIGN KEY (clan_b_id) REFERENCES clan.clans(id);


--
-- TOC entry 5489 (class 2606 OID 35701)
-- Name: clan_sieges clan_sieges_season_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.clan_sieges
    ADD CONSTRAINT clan_sieges_season_id_fkey FOREIGN KEY (season_id) REFERENCES competitive.seasons(id);


--
-- TOC entry 5490 (class 2606 OID 35716)
-- Name: clan_sieges clan_sieges_winner_clan_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.clan_sieges
    ADD CONSTRAINT clan_sieges_winner_clan_id_fkey FOREIGN KEY (winner_clan_id) REFERENCES clan.clans(id);


--
-- TOC entry 5480 (class 2606 OID 35647)
-- Name: defense_snapshots defense_snapshots_hero_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.defense_snapshots
    ADD CONSTRAINT defense_snapshots_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id);


--
-- TOC entry 5481 (class 2606 OID 35642)
-- Name: defense_snapshots defense_snapshots_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.defense_snapshots
    ADD CONSTRAINT defense_snapshots_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5479 (class 2606 OID 35652)
-- Name: arena_profiles fk_arena_def_snapshot; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.arena_profiles
    ADD CONSTRAINT fk_arena_def_snapshot FOREIGN KEY (defense_snapshot_id) REFERENCES competitive.defense_snapshots(id);


--
-- TOC entry 5476 (class 2606 OID 35607)
-- Name: seasons seasons_config_version_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.seasons
    ADD CONSTRAINT seasons_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5495 (class 2606 OID 35766)
-- Name: siege_attacks siege_attacks_attacker_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_attacker_player_id_fkey FOREIGN KEY (attacker_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5496 (class 2606 OID 35781)
-- Name: siege_attacks siege_attacks_combat_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_combat_id_fkey FOREIGN KEY (combat_id) REFERENCES combat.combat_instances(id);


--
-- TOC entry 5497 (class 2606 OID 35771)
-- Name: siege_attacks siege_attacks_defender_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_defender_player_id_fkey FOREIGN KEY (defender_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5498 (class 2606 OID 35776)
-- Name: siege_attacks siege_attacks_defense_snapshot_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_defense_snapshot_id_fkey FOREIGN KEY (defense_snapshot_id) REFERENCES competitive.defense_snapshots(id);


--
-- TOC entry 5499 (class 2606 OID 35761)
-- Name: siege_attacks siege_attacks_siege_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_attacks
    ADD CONSTRAINT siege_attacks_siege_id_fkey FOREIGN KEY (siege_id) REFERENCES competitive.clan_sieges(id) ON DELETE CASCADE;


--
-- TOC entry 5491 (class 2606 OID 35734)
-- Name: siege_rosters siege_rosters_clan_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_rosters
    ADD CONSTRAINT siege_rosters_clan_id_fkey FOREIGN KEY (clan_id) REFERENCES clan.clans(id);


--
-- TOC entry 5492 (class 2606 OID 35744)
-- Name: siege_rosters siege_rosters_defense_snapshot_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_rosters
    ADD CONSTRAINT siege_rosters_defense_snapshot_id_fkey FOREIGN KEY (defense_snapshot_id) REFERENCES competitive.defense_snapshots(id);


--
-- TOC entry 5493 (class 2606 OID 35739)
-- Name: siege_rosters siege_rosters_player_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_rosters
    ADD CONSTRAINT siege_rosters_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5494 (class 2606 OID 35729)
-- Name: siege_rosters siege_rosters_siege_id_fkey; Type: FK CONSTRAINT; Schema: competitive; Owner: lost_kingsland
--

ALTER TABLE ONLY competitive.siege_rosters
    ADD CONSTRAINT siege_rosters_siege_id_fkey FOREIGN KEY (siege_id) REFERENCES competitive.clan_sieges(id) ON DELETE CASCADE;


--
-- TOC entry 5295 (class 2606 OID 33467)
-- Name: affinity_defs affinity_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.affinity_defs
    ADD CONSTRAINT affinity_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5292 (class 2606 OID 33430)
-- Name: bloodline_defs bloodline_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.bloodline_defs
    ADD CONSTRAINT bloodline_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5311 (class 2606 OID 33725)
-- Name: building_defs building_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.building_defs
    ADD CONSTRAINT building_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5313 (class 2606 OID 33762)
-- Name: combat_profiles combat_profiles_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.combat_profiles
    ADD CONSTRAINT combat_profiles_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5308 (class 2606 OID 33676)
-- Name: enemy_defs enemy_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.enemy_defs
    ADD CONSTRAINT enemy_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5297 (class 2606 OID 33510)
-- Name: exploration_floor_profiles exploration_floor_profiles_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.exploration_floor_profiles
    ADD CONSTRAINT exploration_floor_profiles_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5293 (class 2606 OID 33642)
-- Name: path_defs fk_path_starting_technique; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_defs
    ADD CONSTRAINT fk_path_starting_technique FOREIGN KEY (starting_technique_code, config_version_id) REFERENCES content.technique_defs(code, config_version_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5290 (class 2606 OID 33637)
-- Name: race_defs fk_race_racial_technique; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.race_defs
    ADD CONSTRAINT fk_race_racial_technique FOREIGN KEY (racial_technique_code, config_version_id) REFERENCES content.technique_defs(code, config_version_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5299 (class 2606 OID 33547)
-- Name: march_slot_unlock_rules march_slot_unlock_rules_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.march_slot_unlock_rules
    ADD CONSTRAINT march_slot_unlock_rules_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5298 (class 2606 OID 33532)
-- Name: monster_reward_profiles monster_reward_profiles_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.monster_reward_profiles
    ADD CONSTRAINT monster_reward_profiles_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5310 (class 2606 OID 33710)
-- Name: node_defs node_defs_region_def_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.node_defs
    ADD CONSTRAINT node_defs_region_def_id_fkey FOREIGN KEY (region_def_id) REFERENCES content.region_defs(id) ON DELETE CASCADE;


--
-- TOC entry 5294 (class 2606 OID 33450)
-- Name: path_defs path_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_defs
    ADD CONSTRAINT path_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5303 (class 2606 OID 33622)
-- Name: path_starting_techniques path_starting_techniques_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_starting_techniques
    ADD CONSTRAINT path_starting_techniques_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5304 (class 2606 OID 33627)
-- Name: path_starting_techniques path_starting_techniques_path_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_starting_techniques
    ADD CONSTRAINT path_starting_techniques_path_code_config_version_id_fkey FOREIGN KEY (path_code, config_version_id) REFERENCES content.path_defs(code, config_version_id);


--
-- TOC entry 5305 (class 2606 OID 33632)
-- Name: path_starting_techniques path_starting_techniques_technique_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.path_starting_techniques
    ADD CONSTRAINT path_starting_techniques_technique_code_config_version_id_fkey FOREIGN KEY (technique_code, config_version_id) REFERENCES content.technique_defs(code, config_version_id);


--
-- TOC entry 5301 (class 2606 OID 33581)
-- Name: profession_defs profession_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.profession_defs
    ADD CONSTRAINT profession_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5291 (class 2606 OID 33412)
-- Name: race_defs race_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.race_defs
    ADD CONSTRAINT race_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5296 (class 2606 OID 33490)
-- Name: realm_defs realm_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.realm_defs
    ADD CONSTRAINT realm_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5309 (class 2606 OID 33693)
-- Name: region_defs region_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.region_defs
    ADD CONSTRAINT region_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5312 (class 2606 OID 33743)
-- Name: research_defs research_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.research_defs
    ADD CONSTRAINT research_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5300 (class 2606 OID 33565)
-- Name: sect_defs sect_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.sect_defs
    ADD CONSTRAINT sect_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5302 (class 2606 OID 33609)
-- Name: technique_defs technique_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_defs
    ADD CONSTRAINT technique_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5306 (class 2606 OID 33657)
-- Name: technique_tag_links technique_tag_links_tag_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_tag_links
    ADD CONSTRAINT technique_tag_links_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES content.tags(id) ON DELETE CASCADE;


--
-- TOC entry 5307 (class 2606 OID 33652)
-- Name: technique_tag_links technique_tag_links_technique_def_id_fkey; Type: FK CONSTRAINT; Schema: content; Owner: lost_kingsland
--

ALTER TABLE ONLY content.technique_tag_links
    ADD CONSTRAINT technique_tag_links_technique_def_id_fkey FOREIGN KEY (technique_def_id) REFERENCES content.technique_defs(id) ON DELETE CASCADE;


--
-- TOC entry 5403 (class 2606 OID 34816)
-- Name: inventory_operations inventory_operations_player_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.inventory_operations
    ADD CONSTRAINT inventory_operations_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5397 (class 2606 OID 34735)
-- Name: ledger_accounts ledger_accounts_asset_code_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_accounts
    ADD CONSTRAINT ledger_accounts_asset_code_fkey FOREIGN KEY (asset_code) REFERENCES economy.asset_defs(code);


--
-- TOC entry 5399 (class 2606 OID 34775)
-- Name: ledger_entries ledger_entries_ledger_account_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_entries
    ADD CONSTRAINT ledger_entries_ledger_account_id_fkey FOREIGN KEY (ledger_account_id) REFERENCES economy.ledger_accounts(id);


--
-- TOC entry 5400 (class 2606 OID 34770)
-- Name: ledger_entries ledger_entries_operation_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_entries
    ADD CONSTRAINT ledger_entries_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5398 (class 2606 OID 34753)
-- Name: ledger_operations ledger_operations_config_version_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.ledger_operations
    ADD CONSTRAINT ledger_operations_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5401 (class 2606 OID 34799)
-- Name: reward_grants reward_grants_operation_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.reward_grants
    ADD CONSTRAINT reward_grants_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5402 (class 2606 OID 34794)
-- Name: reward_grants reward_grants_player_id_fkey; Type: FK CONSTRAINT; Schema: economy; Owner: lost_kingsland
--

ALTER TABLE ONLY economy.reward_grants
    ADD CONSTRAINT reward_grants_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5339 (class 2606 OID 34100)
-- Name: breakthrough_attempts breakthrough_attempts_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.breakthrough_attempts
    ADD CONSTRAINT breakthrough_attempts_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5340 (class 2606 OID 34095)
-- Name: breakthrough_attempts breakthrough_attempts_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.breakthrough_attempts
    ADD CONSTRAINT breakthrough_attempts_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5320 (class 2606 OID 33914)
-- Name: character_creation_sessions character_creation_sessions_affinity_code_config_version_i_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_affinity_code_config_version_i_fkey FOREIGN KEY (affinity_code, config_version_id) REFERENCES content.affinity_defs(code, config_version_id);


--
-- TOC entry 5321 (class 2606 OID 33894)
-- Name: character_creation_sessions character_creation_sessions_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5322 (class 2606 OID 33899)
-- Name: character_creation_sessions character_creation_sessions_confirmed_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_confirmed_hero_id_fkey FOREIGN KEY (confirmed_hero_id) REFERENCES hero.player_heroes(id) ON DELETE SET NULL;


--
-- TOC entry 5323 (class 2606 OID 33909)
-- Name: character_creation_sessions character_creation_sessions_path_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_path_code_config_version_id_fkey FOREIGN KEY (path_code, config_version_id) REFERENCES content.path_defs(code, config_version_id);


--
-- TOC entry 5324 (class 2606 OID 33889)
-- Name: character_creation_sessions character_creation_sessions_player_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5325 (class 2606 OID 33904)
-- Name: character_creation_sessions character_creation_sessions_race_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_race_code_config_version_id_fkey FOREIGN KEY (race_code, config_version_id) REFERENCES content.race_defs(code, config_version_id);


--
-- TOC entry 5326 (class 2606 OID 33919)
-- Name: character_creation_sessions character_creation_sessions_starting_technique_code_config_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.character_creation_sessions
    ADD CONSTRAINT character_creation_sessions_starting_technique_code_config_fkey FOREIGN KEY (starting_technique_code, config_version_id) REFERENCES content.technique_defs(code, config_version_id);


--
-- TOC entry 5341 (class 2606 OID 36110)
-- Name: breakthrough_attempts fk_breakthrough_combat; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.breakthrough_attempts
    ADD CONSTRAINT fk_breakthrough_combat FOREIGN KEY (combat_instance_id) REFERENCES combat.combat_instances(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5342 (class 2606 OID 36115)
-- Name: breakthrough_attempts fk_breakthrough_consume_operation; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.breakthrough_attempts
    ADD CONSTRAINT fk_breakthrough_consume_operation FOREIGN KEY (consume_operation_id) REFERENCES economy.inventory_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5314 (class 2606 OID 34007)
-- Name: player_heroes fk_hero_active_loadout; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT fk_hero_active_loadout FOREIGN KEY (id, active_loadout_id) REFERENCES hero.technique_loadouts(hero_id, id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5343 (class 2606 OID 36120)
-- Name: voice_cultivation_sessions fk_voice_cultivation_grant_operation; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT fk_voice_cultivation_grant_operation FOREIGN KEY (grant_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5328 (class 2606 OID 33959)
-- Name: hero_affinities hero_affinities_affinity_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_affinities
    ADD CONSTRAINT hero_affinities_affinity_code_config_version_id_fkey FOREIGN KEY (affinity_code, config_version_id) REFERENCES content.affinity_defs(code, config_version_id);


--
-- TOC entry 5329 (class 2606 OID 33954)
-- Name: hero_affinities hero_affinities_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_affinities
    ADD CONSTRAINT hero_affinities_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5330 (class 2606 OID 33949)
-- Name: hero_affinities hero_affinities_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_affinities
    ADD CONSTRAINT hero_affinities_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5327 (class 2606 OID 33934)
-- Name: hero_bloodlines hero_bloodlines_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_bloodlines
    ADD CONSTRAINT hero_bloodlines_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5319 (class 2606 OID 33867)
-- Name: hero_source_stats hero_source_stats_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_source_stats
    ADD CONSTRAINT hero_source_stats_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5336 (class 2606 OID 34037)
-- Name: hero_talent_allocations hero_talent_allocations_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_talent_allocations
    ADD CONSTRAINT hero_talent_allocations_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5337 (class 2606 OID 34042)
-- Name: hero_talent_allocations hero_talent_allocations_talent_node_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_talent_allocations
    ADD CONSTRAINT hero_talent_allocations_talent_node_id_fkey FOREIGN KEY (talent_node_id) REFERENCES hero.talent_nodes(id);


--
-- TOC entry 5331 (class 2606 OID 33977)
-- Name: hero_techniques hero_techniques_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_techniques
    ADD CONSTRAINT hero_techniques_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5332 (class 2606 OID 33972)
-- Name: hero_techniques hero_techniques_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_techniques
    ADD CONSTRAINT hero_techniques_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5333 (class 2606 OID 33982)
-- Name: hero_techniques hero_techniques_technique_code_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.hero_techniques
    ADD CONSTRAINT hero_techniques_technique_code_config_version_id_fkey FOREIGN KEY (technique_code, config_version_id) REFERENCES content.technique_defs(code, config_version_id);


--
-- TOC entry 5315 (class 2606 OID 33801)
-- Name: player_heroes player_heroes_character_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_character_config_version_id_fkey FOREIGN KEY (character_config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5316 (class 2606 OID 33811)
-- Name: player_heroes player_heroes_path_code_character_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_path_code_character_config_version_id_fkey FOREIGN KEY (path_code, character_config_version_id) REFERENCES content.path_defs(code, config_version_id);


--
-- TOC entry 5317 (class 2606 OID 33796)
-- Name: player_heroes player_heroes_player_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5318 (class 2606 OID 33806)
-- Name: player_heroes player_heroes_race_code_character_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.player_heroes
    ADD CONSTRAINT player_heroes_race_code_character_config_version_id_fkey FOREIGN KEY (race_code, character_config_version_id) REFERENCES content.race_defs(code, config_version_id);


--
-- TOC entry 5338 (class 2606 OID 34058)
-- Name: profession_progress profession_progress_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.profession_progress
    ADD CONSTRAINT profession_progress_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5335 (class 2606 OID 34025)
-- Name: talent_nodes talent_nodes_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.talent_nodes
    ADD CONSTRAINT talent_nodes_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5334 (class 2606 OID 34002)
-- Name: technique_loadouts technique_loadouts_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.technique_loadouts
    ADD CONSTRAINT technique_loadouts_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5344 (class 2606 OID 34134)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_config_version_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5345 (class 2606 OID 34129)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_guild_binding_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_guild_binding_id_fkey FOREIGN KEY (guild_binding_id) REFERENCES identity.discord_guild_bindings(id) ON DELETE SET NULL;


--
-- TOC entry 5346 (class 2606 OID 34119)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5347 (class 2606 OID 34124)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_player_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5348 (class 2606 OID 34139)
-- Name: voice_cultivation_sessions voice_cultivation_sessions_player_id_hero_id_fkey; Type: FK CONSTRAINT; Schema: hero; Owner: lost_kingsland
--

ALTER TABLE ONLY hero.voice_cultivation_sessions
    ADD CONSTRAINT voice_cultivation_sessions_player_id_hero_id_fkey FOREIGN KEY (player_id, hero_id) REFERENCES hero.player_heroes(player_id, id);


--
-- TOC entry 5287 (class 2606 OID 33366)
-- Name: discord_guild_bindings discord_guild_bindings_owner_account_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_guild_bindings
    ADD CONSTRAINT discord_guild_bindings_owner_account_id_fkey FOREIGN KEY (owner_account_id) REFERENCES identity.accounts(id);


--
-- TOC entry 5282 (class 2606 OID 33307)
-- Name: discord_link_events discord_link_events_account_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_link_events
    ADD CONSTRAINT discord_link_events_account_id_fkey FOREIGN KEY (account_id) REFERENCES identity.accounts(id) ON DELETE CASCADE;


--
-- TOC entry 5283 (class 2606 OID 33302)
-- Name: discord_link_events discord_link_events_discord_link_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_link_events
    ADD CONSTRAINT discord_link_events_discord_link_id_fkey FOREIGN KEY (discord_link_id) REFERENCES identity.discord_links(id) ON DELETE SET NULL;


--
-- TOC entry 5281 (class 2606 OID 33284)
-- Name: discord_links discord_links_account_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_links
    ADD CONSTRAINT discord_links_account_id_fkey FOREIGN KEY (account_id) REFERENCES identity.accounts(id) ON DELETE CASCADE;


--
-- TOC entry 5288 (class 2606 OID 34848)
-- Name: discord_guild_bindings fk_guild_binding_clan; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.discord_guild_bindings
    ADD CONSTRAINT fk_guild_binding_clan FOREIGN KEY (clan_id) REFERENCES clan.clans(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5284 (class 2606 OID 33817)
-- Name: players fk_players_active_hero; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.players
    ADD CONSTRAINT fk_players_active_hero FOREIGN KEY (id, active_hero_id) REFERENCES hero.player_heroes(player_id, id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5289 (class 2606 OID 33381)
-- Name: interaction_refs interaction_refs_player_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.interaction_refs
    ADD CONSTRAINT interaction_refs_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5286 (class 2606 OID 33348)
-- Name: player_settings player_settings_player_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.player_settings
    ADD CONSTRAINT player_settings_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5285 (class 2606 OID 33332)
-- Name: players players_account_id_fkey; Type: FK CONSTRAINT; Schema: identity; Owner: lost_kingsland
--

ALTER TABLE ONLY identity.players
    ADD CONSTRAINT players_account_id_fkey FOREIGN KEY (account_id) REFERENCES identity.accounts(id) ON DELETE CASCADE;


--
-- TOC entry 5359 (class 2606 OID 34328)
-- Name: craft_jobs craft_jobs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT craft_jobs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5360 (class 2606 OID 34323)
-- Name: craft_jobs craft_jobs_hero_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT craft_jobs_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id);


--
-- TOC entry 5361 (class 2606 OID 34318)
-- Name: craft_jobs craft_jobs_player_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT craft_jobs_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5362 (class 2606 OID 34333)
-- Name: craft_jobs craft_jobs_player_id_hero_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT craft_jobs_player_id_hero_id_fkey FOREIGN KEY (player_id, hero_id) REFERENCES hero.player_heroes(player_id, id);


--
-- TOC entry 5350 (class 2606 OID 34187)
-- Name: equipment_affix_combinations equipment_affix_combinations_config_version_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_affix_combinations
    ADD CONSTRAINT equipment_affix_combinations_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5356 (class 2606 OID 34270)
-- Name: equipment_loadouts equipment_loadouts_hero_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_loadouts
    ADD CONSTRAINT equipment_loadouts_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE CASCADE;


--
-- TOC entry 5524 (class 2606 OID 46123)
-- Name: equipment_set_bonuses equipment_set_bonuses_set_code_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.equipment_set_bonuses
    ADD CONSTRAINT equipment_set_bonuses_set_code_fkey FOREIGN KEY (set_code) REFERENCES inventory.equipment_set_defs(set_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 5363 (class 2606 OID 36140)
-- Name: craft_jobs fk_craft_building; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT fk_craft_building FOREIGN KEY (building_id) REFERENCES kingdom.kingdom_buildings(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5364 (class 2606 OID 36130)
-- Name: craft_jobs fk_craft_input_operation; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT fk_craft_input_operation FOREIGN KEY (input_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5365 (class 2606 OID 36135)
-- Name: craft_jobs fk_craft_output_operation; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.craft_jobs
    ADD CONSTRAINT fk_craft_output_operation FOREIGN KEY (output_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5355 (class 2606 OID 34251)
-- Name: inventory_stacks inventory_stacks_player_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.inventory_stacks
    ADD CONSTRAINT inventory_stacks_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5349 (class 2606 OID 34162)
-- Name: item_defs item_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_defs
    ADD CONSTRAINT item_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5351 (class 2606 OID 34224)
-- Name: item_instances item_instances_hero_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_hero_id_fkey FOREIGN KEY (hero_id) REFERENCES hero.player_heroes(id) ON DELETE SET NULL;


--
-- TOC entry 5352 (class 2606 OID 34229)
-- Name: item_instances item_instances_item_code_item_config_version_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_item_code_item_config_version_id_fkey FOREIGN KEY (item_code, item_config_version_id) REFERENCES inventory.item_defs(code, config_version_id);


--
-- TOC entry 5353 (class 2606 OID 34219)
-- Name: item_instances item_instances_player_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5354 (class 2606 OID 34234)
-- Name: item_instances item_instances_player_id_hero_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.item_instances
    ADD CONSTRAINT item_instances_player_id_hero_id_fkey FOREIGN KEY (player_id, hero_id) REFERENCES hero.player_heroes(player_id, id);


--
-- TOC entry 5358 (class 2606 OID 34301)
-- Name: player_recipes player_recipes_player_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.player_recipes
    ADD CONSTRAINT player_recipes_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5357 (class 2606 OID 34290)
-- Name: recipes recipes_config_version_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: lost_kingsland
--

ALTER TABLE ONLY inventory.recipes
    ADD CONSTRAINT recipes_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5386 (class 2606 OID 34643)
-- Name: construction_jobs construction_jobs_building_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT construction_jobs_building_id_fkey FOREIGN KEY (building_id) REFERENCES kingdom.kingdom_buildings(id);


--
-- TOC entry 5387 (class 2606 OID 34648)
-- Name: construction_jobs construction_jobs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT construction_jobs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5388 (class 2606 OID 34653)
-- Name: construction_jobs construction_jobs_kingdom_id_building_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT construction_jobs_kingdom_id_building_id_fkey FOREIGN KEY (kingdom_id, building_id) REFERENCES kingdom.kingdom_buildings(kingdom_id, id);


--
-- TOC entry 5389 (class 2606 OID 34638)
-- Name: construction_jobs construction_jobs_kingdom_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT construction_jobs_kingdom_id_fkey FOREIGN KEY (kingdom_id) REFERENCES kingdom.player_kingdoms(id) ON DELETE CASCADE;


--
-- TOC entry 5390 (class 2606 OID 36150)
-- Name: construction_jobs fk_construction_apply_operation; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT fk_construction_apply_operation FOREIGN KEY (apply_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5391 (class 2606 OID 36145)
-- Name: construction_jobs fk_construction_cost_operation; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.construction_jobs
    ADD CONSTRAINT fk_construction_cost_operation FOREIGN KEY (cost_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5393 (class 2606 OID 36155)
-- Name: research_jobs fk_research_cost_operation; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.research_jobs
    ADD CONSTRAINT fk_research_cost_operation FOREIGN KEY (cost_operation_id) REFERENCES economy.ledger_operations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5385 (class 2606 OID 34618)
-- Name: kingdom_buildings kingdom_buildings_kingdom_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.kingdom_buildings
    ADD CONSTRAINT kingdom_buildings_kingdom_id_fkey FOREIGN KEY (kingdom_id) REFERENCES kingdom.player_kingdoms(id) ON DELETE CASCADE;


--
-- TOC entry 5384 (class 2606 OID 34596)
-- Name: player_kingdoms player_kingdoms_player_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.player_kingdoms
    ADD CONSTRAINT player_kingdoms_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5392 (class 2606 OID 34667)
-- Name: player_research player_research_kingdom_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.player_research
    ADD CONSTRAINT player_research_kingdom_id_fkey FOREIGN KEY (kingdom_id) REFERENCES kingdom.player_kingdoms(id) ON DELETE CASCADE;


--
-- TOC entry 5396 (class 2606 OID 34706)
-- Name: production_sites production_sites_kingdom_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.production_sites
    ADD CONSTRAINT production_sites_kingdom_id_fkey FOREIGN KEY (kingdom_id) REFERENCES kingdom.player_kingdoms(id) ON DELETE CASCADE;


--
-- TOC entry 5394 (class 2606 OID 34690)
-- Name: research_jobs research_jobs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.research_jobs
    ADD CONSTRAINT research_jobs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5395 (class 2606 OID 34685)
-- Name: research_jobs research_jobs_kingdom_id_fkey; Type: FK CONSTRAINT; Schema: kingdom; Owner: lost_kingsland
--

ALTER TABLE ONLY kingdom.research_jobs
    ADD CONSTRAINT research_jobs_kingdom_id_fkey FOREIGN KEY (kingdom_id) REFERENCES kingdom.player_kingdoms(id) ON DELETE CASCADE;


--
-- TOC entry 5500 (class 2606 OID 35802)
-- Name: event_defs event_defs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.event_defs
    ADD CONSTRAINT event_defs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5501 (class 2606 OID 35824)
-- Name: events events_config_version_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.events
    ADD CONSTRAINT events_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5502 (class 2606 OID 35819)
-- Name: events events_season_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.events
    ADD CONSTRAINT events_season_id_fkey FOREIGN KEY (season_id) REFERENCES competitive.seasons(id);


--
-- TOC entry 5507 (class 2606 OID 35882)
-- Name: leaderboard_entries leaderboard_entries_leaderboard_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboard_entries
    ADD CONSTRAINT leaderboard_entries_leaderboard_id_fkey FOREIGN KEY (leaderboard_id) REFERENCES liveops.leaderboards(id) ON DELETE CASCADE;


--
-- TOC entry 5505 (class 2606 OID 35867)
-- Name: leaderboards leaderboards_event_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboards
    ADD CONSTRAINT leaderboards_event_id_fkey FOREIGN KEY (event_id) REFERENCES liveops.events(id);


--
-- TOC entry 5506 (class 2606 OID 35862)
-- Name: leaderboards leaderboards_season_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.leaderboards
    ADD CONSTRAINT leaderboards_season_id_fkey FOREIGN KEY (season_id) REFERENCES competitive.seasons(id);


--
-- TOC entry 5508 (class 2606 OID 35901)
-- Name: merchant_rotations merchant_rotations_config_version_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.merchant_rotations
    ADD CONSTRAINT merchant_rotations_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5509 (class 2606 OID 35896)
-- Name: merchant_rotations merchant_rotations_player_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.merchant_rotations
    ADD CONSTRAINT merchant_rotations_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5503 (class 2606 OID 35841)
-- Name: player_event_progress player_event_progress_event_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.player_event_progress
    ADD CONSTRAINT player_event_progress_event_id_fkey FOREIGN KEY (event_id) REFERENCES liveops.events(id) ON DELETE CASCADE;


--
-- TOC entry 5504 (class 2606 OID 35846)
-- Name: player_event_progress player_event_progress_player_id_fkey; Type: FK CONSTRAINT; Schema: liveops; Owner: lost_kingsland
--

ALTER TABLE ONLY liveops.player_event_progress
    ADD CONSTRAINT player_event_progress_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5451 (class 2606 OID 35413)
-- Name: gather_jobs gather_jobs_config_version_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5452 (class 2606 OID 35393)
-- Name: gather_jobs gather_jobs_march_slot_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_march_slot_id_fkey FOREIGN KEY (march_slot_id) REFERENCES march.player_march_slots(id) ON DELETE CASCADE;


--
-- TOC entry 5453 (class 2606 OID 35398)
-- Name: gather_jobs gather_jobs_player_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5454 (class 2606 OID 35418)
-- Name: gather_jobs gather_jobs_player_id_march_slot_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_player_id_march_slot_id_fkey FOREIGN KEY (player_id, march_slot_id) REFERENCES march.player_march_slots(player_id, id);


--
-- TOC entry 5455 (class 2606 OID 35403)
-- Name: gather_jobs gather_jobs_resource_site_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_resource_site_id_fkey FOREIGN KEY (resource_site_id) REFERENCES march.resource_sites(id);


--
-- TOC entry 5456 (class 2606 OID 35408)
-- Name: gather_jobs gather_jobs_settlement_operation_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.gather_jobs
    ADD CONSTRAINT gather_jobs_settlement_operation_id_fkey FOREIGN KEY (settlement_operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5442 (class 2606 OID 35309)
-- Name: hunt_loops hunt_loops_config_version_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_loops
    ADD CONSTRAINT hunt_loops_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5443 (class 2606 OID 35299)
-- Name: hunt_loops hunt_loops_march_slot_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_loops
    ADD CONSTRAINT hunt_loops_march_slot_id_fkey FOREIGN KEY (march_slot_id) REFERENCES march.player_march_slots(id) ON DELETE CASCADE;


--
-- TOC entry 5444 (class 2606 OID 35304)
-- Name: hunt_loops hunt_loops_player_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_loops
    ADD CONSTRAINT hunt_loops_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5445 (class 2606 OID 35314)
-- Name: hunt_loops hunt_loops_player_id_march_slot_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_loops
    ADD CONSTRAINT hunt_loops_player_id_march_slot_id_fkey FOREIGN KEY (player_id, march_slot_id) REFERENCES march.player_march_slots(player_id, id);


--
-- TOC entry 5446 (class 2606 OID 35353)
-- Name: hunt_rounds hunt_rounds_clan_id_snapshot_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_clan_id_snapshot_fkey FOREIGN KEY (clan_id_snapshot) REFERENCES clan.clans(id) ON DELETE SET NULL;


--
-- TOC entry 5447 (class 2606 OID 35343)
-- Name: hunt_rounds hunt_rounds_combat_instance_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_combat_instance_id_fkey FOREIGN KEY (combat_instance_id) REFERENCES combat.combat_instances(id);


--
-- TOC entry 5448 (class 2606 OID 35338)
-- Name: hunt_rounds hunt_rounds_hunt_loop_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_hunt_loop_id_fkey FOREIGN KEY (hunt_loop_id) REFERENCES march.hunt_loops(id) ON DELETE CASCADE;


--
-- TOC entry 5449 (class 2606 OID 35348)
-- Name: hunt_rounds hunt_rounds_reward_grant_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.hunt_rounds
    ADD CONSTRAINT hunt_rounds_reward_grant_id_fkey FOREIGN KEY (reward_grant_id) REFERENCES economy.reward_grants(id);


--
-- TOC entry 5439 (class 2606 OID 35274)
-- Name: player_march_slots player_march_slots_commander_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_commander_id_fkey FOREIGN KEY (commander_id) REFERENCES commander.player_commanders(id) ON DELETE SET NULL;


--
-- TOC entry 5440 (class 2606 OID 35279)
-- Name: player_march_slots player_march_slots_player_id_commander_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_player_id_commander_id_fkey FOREIGN KEY (player_id, commander_id) REFERENCES commander.player_commanders(player_id, id);


--
-- TOC entry 5441 (class 2606 OID 35269)
-- Name: player_march_slots player_march_slots_player_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.player_march_slots
    ADD CONSTRAINT player_march_slots_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5450 (class 2606 OID 35372)
-- Name: resource_sites resource_sites_config_version_id_fkey; Type: FK CONSTRAINT; Schema: march; Owner: lost_kingsland
--

ALTER TABLE ONLY march.resource_sites
    ADD CONSTRAINT resource_sites_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


--
-- TOC entry 5462 (class 2606 OID 35486)
-- Name: direct_trade_offers direct_trade_offers_item_instance_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.direct_trade_offers
    ADD CONSTRAINT direct_trade_offers_item_instance_id_fkey FOREIGN KEY (item_instance_id) REFERENCES inventory.item_instances(id);


--
-- TOC entry 5463 (class 2606 OID 35481)
-- Name: direct_trade_offers direct_trade_offers_recipient_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.direct_trade_offers
    ADD CONSTRAINT direct_trade_offers_recipient_player_id_fkey FOREIGN KEY (recipient_player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5464 (class 2606 OID 35476)
-- Name: direct_trade_offers direct_trade_offers_sender_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.direct_trade_offers
    ADD CONSTRAINT direct_trade_offers_sender_player_id_fkey FOREIGN KEY (sender_player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5465 (class 2606 OID 35508)
-- Name: item_transfers item_transfers_from_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_from_player_id_fkey FOREIGN KEY (from_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5466 (class 2606 OID 35503)
-- Name: item_transfers item_transfers_item_instance_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_item_instance_id_fkey FOREIGN KEY (item_instance_id) REFERENCES inventory.item_instances(id);


--
-- TOC entry 5467 (class 2606 OID 35518)
-- Name: item_transfers item_transfers_ownership_operation_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_ownership_operation_id_fkey FOREIGN KEY (ownership_operation_id) REFERENCES economy.inventory_operations(id);


--
-- TOC entry 5468 (class 2606 OID 35513)
-- Name: item_transfers item_transfers_to_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.item_transfers
    ADD CONSTRAINT item_transfers_to_player_id_fkey FOREIGN KEY (to_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5457 (class 2606 OID 35452)
-- Name: listings listings_buyer_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_buyer_player_id_fkey FOREIGN KEY (buyer_player_id) REFERENCES identity.players(id);


--
-- TOC entry 5458 (class 2606 OID 35442)
-- Name: listings listings_item_instance_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_item_instance_id_fkey FOREIGN KEY (item_instance_id) REFERENCES inventory.item_instances(id);


--
-- TOC entry 5459 (class 2606 OID 35447)
-- Name: listings listings_price_asset_code_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_price_asset_code_fkey FOREIGN KEY (price_asset_code) REFERENCES economy.asset_defs(code);


--
-- TOC entry 5460 (class 2606 OID 35437)
-- Name: listings listings_seller_player_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_seller_player_id_fkey FOREIGN KEY (seller_player_id) REFERENCES identity.players(id) ON DELETE CASCADE;


--
-- TOC entry 5461 (class 2606 OID 35457)
-- Name: listings listings_settlement_operation_id_fkey; Type: FK CONSTRAINT; Schema: market; Owner: lost_kingsland
--

ALTER TABLE ONLY market.listings
    ADD CONSTRAINT listings_settlement_operation_id_fkey FOREIGN KEY (settlement_operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5519 (class 2606 OID 36037)
-- Name: guild_media_settings guild_media_settings_guild_binding_id_fkey; Type: FK CONSTRAINT; Schema: media; Owner: lost_kingsland
--

ALTER TABLE ONLY media.guild_media_settings
    ADD CONSTRAINT guild_media_settings_guild_binding_id_fkey FOREIGN KEY (guild_binding_id) REFERENCES identity.discord_guild_bindings(id) ON DELETE CASCADE;


--
-- TOC entry 5523 (class 2606 OID 36105)
-- Name: abuse_signals abuse_signals_player_id_fkey; Type: FK CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.abuse_signals
    ADD CONSTRAINT abuse_signals_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5520 (class 2606 OID 36075)
-- Name: compensation_cases compensation_cases_operation_id_fkey; Type: FK CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.compensation_cases
    ADD CONSTRAINT compensation_cases_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES economy.ledger_operations(id);


--
-- TOC entry 5521 (class 2606 OID 36070)
-- Name: compensation_cases compensation_cases_player_id_fkey; Type: FK CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.compensation_cases
    ADD CONSTRAINT compensation_cases_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5522 (class 2606 OID 36090)
-- Name: player_sanctions player_sanctions_player_id_fkey; Type: FK CONSTRAINT; Schema: ops; Owner: lost_kingsland
--

ALTER TABLE ONLY ops.player_sanctions
    ADD CONSTRAINT player_sanctions_player_id_fkey FOREIGN KEY (player_id) REFERENCES identity.players(id);


--
-- TOC entry 5280 (class 2606 OID 33219)
-- Name: feature_flags feature_flags_config_version_id_fkey; Type: FK CONSTRAINT; Schema: platform; Owner: lost_kingsland
--

ALTER TABLE ONLY platform.feature_flags
    ADD CONSTRAINT feature_flags_config_version_id_fkey FOREIGN KEY (config_version_id) REFERENCES platform.config_versions(id);


-- Completed on 2026-08-12 00:14:37

--
-- PostgreSQL database dump complete
--


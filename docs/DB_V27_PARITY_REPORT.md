# Lost Kingsland — V27 vs Original Database Parity Report

## Files compared

- **V27 final dump:** `lost_kingsland_FULL_202608141932.sql`
- **Original/reference dump:** `lost_kingsland_FULL_202608141933.sql`

## Verdict

**FINAL V27 SPEC / CORE CATALOG PARITY: PASS**

**FULL ORIGINAL DB PARITY: NOT 100%**

**SCHEMA-IDENTICAL: NO — intentionally.**

V27 preserves the final approved game content and replaces several older table families with safer/versioned V4 implementations. However, an original-only Faction Boss combat field remains outside V27 and must not be silently treated as equivalent.

## Schema footprint

| Metric | V27 | Original |
|---|---:|---:|
| Tables | 197 | 166 |
| Views | 23 | 16 |
| Shared tables | 142 | 142 |
| V27-only tables | 55 | — |
| Original-only tables | — | 24 |

## Canonical equipment

- Original canonical equipment: **480**
- V27 final `ACTIVE_CANONICAL` equipment (`LK-V4.0-P15-RC-001`): **480**
- Missing codes in V27: **0**
- Extra canonical codes in V27: **0**
- PET: **80**
- Other eight slots: **50 each**
- Shared-field differences: **only `salvage_rule` on 480 rows**.

The `salvage_rule` difference is intentional: V27 adds system-sale/balance metadata used by the final Inventory/Sell flow. It is an extension, not loss of original item identity/stats.

## Exact/semantic catalog checks

| Domain | V27 | Original | Result |
|---|---:|---:|---|
| Equipment stat definitions | 10 | 10 | Exact shared fields |
| Equipment sets | 20 | 20 | Exact shared fields |
| Set bonuses | 80 | 80 | Exact shared fields |
| Secondary characters | 40 | 40 | Exact shared fields |
| Faction bosses | 100 | 100 | Exact shared fields |
| Forge recipes | 10 | 10 | Same rules; canonical fragment-code rename |

Forge uses final canonical V4 asset names `EQUIPMENT_FRAGMENT_*`; the original used `EQUIP_FRAGMENT_*`.

## Boss metadata gap

Original boss catalog has three columns not carried by the V27 boss table:

- `visual_band`
- `lifesteal_bonus_pp`
- `image_asset_key`

All shared boss identity/profile fields match. The new Admin shared-media layer stores Boss artwork generically through `platform.entity_media_links`, and all 100 original `image_asset_key` values are null, so removing that direct column loses no current artwork.

`visual_band` is derivable from sequence grouping (the original has 20 bosses in each band 1–5), so it is primarily legacy presentation metadata.

`lifesteal_bonus_pp` is different: it is **non-zero for 50 original bosses** (values include 0.5–2.5 percentage points). V27 does not have this column. V27 does contain newer boss mechanic data (for example `BLOOD_FEAST` parameters), but the dumps alone do **not** prove that this is mathematically equivalent to the original `lifesteal_bonus_pp`.

Therefore this report does **not** recommend copying that field into the live V27 DB automatically. Doing so could alter the already-approved Phase-13 combat balance. If exact legacy boss lifesteal behavior is desired, it should be handled as an explicit Game/Core migration + simulation/regression change.

## Intentional V27 replacements

Examples of original table families superseded by the final architecture:

- old per-table Section balance/reward rules → `content.section_rules`
- old character-only Gacha/banner tables → mixed Wheel `gacha.wheel_rules`, transactions, draws, pity
- old boss choice/state/history tables → pending alignment, activation events, attempts, mastery
- old character shard/ascension model → shard balances + acquisition/ascension events
- old rarity unlock table → versioned Section rules

V27 also adds safety/history tables such as item ownership events, Market reservations/sales/audits, reward dispositions, Arena/Season histories, Clan snapshots/events, rate limits, config activations, and mutation audits.

## Original-only Clan Building tables

The original schema contains `clan.clan_building_defs`, `clan.clan_buildings`, and `clan.clan_building_contributions`, but their dump data sections contain **0 rows**. Their absence in V27 is therefore not loss of active seeded content. They should be treated as a future feature only if Clan Buildings are deliberately reintroduced.

## Final recommendation

Use **`lost_kingsland_v4_reconciled` V27 as the only runtime source of truth** for Game/Bot, Admin, and Web.

Treat the original database as an audit/reference source, not a second runtime authority. The only notable legacy combat-semantic gap found in this comparison is the original boss `lifesteal_bonus_pp`; do not reintroduce it without an explicit balance decision.

Do not import the original consolidated dump over V27.

Use the original dump only for reference/audit when checking historical content.

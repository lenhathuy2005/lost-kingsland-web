# Lost Kingsland Web Architecture

## 1. Role of this project

`lost-kingsland-web` has two responsibilities:

1. **Public site** — introduce the game, lore/system concepts, news/collection later.
2. **Player portal** — render player state in layouts that are awkward in Discord, such as inventory grids, comparisons, march overview, kingdom status, and market browsing.

Discord remains the primary gameplay client. The website is a complementary client.

## 2. No second gameplay engine

The web layer may:

- read player/content state;
- authenticate via Discord;
- format data for browser UX;
- send authenticated action intents to Game Core.

The web layer may not independently resolve:

- combat;
- loot generation;
- currency or asset settlement;
- Tribulation RNG/pity transitions;
- Market purchase/ownership transfer;
- March Hunt/Gather settlement;
- resource generation;
- authoritative equip/salvage state changes.

## 3. Data modes

### SNAPSHOT

Default development mode. Uses `src/main/resources/data/snapshot.json`, generated from the supplied full SQL dump. No DB service is needed.

### DATABASE

Read-only live mode. Uses plain JDBC reads against the same PostgreSQL source of truth.

Recommended production permission boundary:

`lost_kingsland_web_ro` -> SELECT only

## 4. Write path

```text
Browser
  -> lost-kingsland-web
     -> Game Core /web/actions/{action}
        -> existing application service
           -> authoritative transaction / ledger / idempotency / audit
```

No direct UPDATE/INSERT is implemented in this project.

## 5. Current action allowlist

- equip
- unequip
- set-loadout
- salvage
- march-start-hunt
- march-start-gather
- march-stop
- march-withdraw
- market-list
- market-buy
- market-cancel
- kingdom-collect
- settings-update

This is an adapter allowlist, not a new rules engine.

## 6. V28 public edge / integration hub

V28 adds a safe integration surface without changing the authority model:

- `/ops.html` shows Web/Admin/Bot health and public shortcuts.
- Web may ping Admin/Bot health server-to-server.
- Admin writes are **not proxied through the public Web**.
- `POST /api/payments/payos/webhook` is a transport relay only; Bot/Game Core verifies payOS and settles the economy.
- `/payment/success` and `/payment/cancel` are UX-only return pages.
- The floating left dock provides consistent navigation across Home, Codex, Portal, Wheel, Operations, Admin and Bot/Discord links.

This preserves PostgreSQL as source of truth and Bot/Game Core as mutation/economy authority.

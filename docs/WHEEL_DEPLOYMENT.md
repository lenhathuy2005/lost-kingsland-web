# Wheel web deployment

The web renders a selectable card board at `/wheel.html`. Discord images cannot contain clickable regions; `!wheel` links to this page when `GAME_WEB_BASE_URL` is configured in the game process.

## Required configuration

Game environment:

- `GAME_WEB_BASE_URL`: the player-accessible HTTPS origin of this project web. HTTP is accepted only for localhost development.
- `GAME_CORE_SERVICE_TOKEN`: a random secret of at least 32 characters, shared only with the web server.

Web environment:

- `GAME_CORE_BASE_URL`: game-core HTTPS origin, or a loopback HTTP origin when both processes share a host.
- `GAME_CORE_SERVICE_TOKEN`: the same server-only secret. Never expose it in JavaScript, URLs, Discord, or source control.
- Existing Discord OAuth client ID, client secret and redirect URI must be configured. Register the exact callback URI with Discord.
- `WEB_DEMO_LOGIN=false` for production. Wheel mutations reject demo sessions even when demo browsing is enabled.

No credentials or live environment files were changed during implementation. Start/restart requires operator approval under the repository runtime freeze.

## Release sequence

1. Back up the authoritative runtime PostgreSQL database before deploying the game migration.
2. Deploy the tested game artifact in an approved maintenance window. Flyway applies V65 forward-only; do not edit previous migrations or baseline existing data.
3. Deploy the web and admin source, configure the server-only connection and Discord OAuth, then verify login with a linked human account.
4. In Admin, open **Cửa hàng hệ thống**, choose a database item, set quantity, level (equipment only), price currency, price and stock. Enable the offer. No initial prices are invented or seeded.
5. Confirm `!shop` and `!cuahang` open the system shop; `!choden` and `!cd` open the player market.
6. Verify `!wheel` opens the web, a paid start can be retried with the same request key, and a selected card reveals only itself.

## Settlement and compatibility

- New single runs use pending rewards. Cashout or the fourth safe cell grants the accumulated rewards atomically. A bomb forfeits all pending rewards from that run; the Gem fee is not refunded.
- Pity counters advance on safe draws, including forfeited draws. Bombs do not generate an additional draw. Existing pity thresholds remain unchanged.
- Historical V64 runs retain their already-granted rewards; V65 never claws back assets from old runs. New V65 single runs explicitly set `escrow_enabled=true`.
- Ten-card runs retain the existing atomic ten-reward purchase contract. The web reveals only selected cells and never sends hidden rarity, reward or bomb information.
- The game, not JavaScript, owns outcomes, identity verification, idempotency and settlement. State survives browser reloads.
- Missing media does not rerun settlement. The board uses an icon fallback. Present media uses shared DB thumbnails, bounded to 64 KiB per response image.

## Tests

`mvn test` checks the portal and session/CSRF protection. `node scripts/wheel-browser-smoke.cjs` runs an isolated Edge simulation with fake responses, no DB and no payment. Screenshots are saved under `target/wheel-ui-smoke`; this is not a human Discord/OAuth smoke.

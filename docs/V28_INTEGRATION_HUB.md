# Lost Kingsland Web V28 — Integration Hub & payOS Public Edge

## What changed

V28 turns the web project into a polished **public edge/control surface** without moving gameplay authority out of the Bot/Game Core.

```text
Player / Browser
      |
      v
Lost Kingsland Web :8788
  |        |        \
  |        |         \--> payOS callback/webhook ingress
  |        |
  |        +------------> Bot / Game Core API
  |
  +---------------------> shared PostgreSQL/media (READ ONLY)
                           ^
                           |
                         Admin
```

## The three payOS URLs

When Web is public, open `/ops.html`. It shows and copies the exact current public URLs:

```text
/payment/success
/payment/cancel
/api/payments/payos/webhook
```

Example:

```text
https://YOUR-WEB-DOMAIN/payment/success
https://YOUR-WEB-DOMAIN/payment/cancel
https://YOUR-WEB-DOMAIN/api/payments/payos/webhook
```

### Important authority boundary

`returnUrl` and `cancelUrl` are UX pages only.

The webhook endpoint **does not credit GEMS itself**. It forwards the exact request body to the Bot/Game Core endpoint configured by `PAYOS_WEBHOOK_TARGET_URL` (or `BOT_BASE_URL/api/payments/payos/webhook`). Bot/Game Core must:

1. verify payOS checksum/signature;
2. find the payment order;
3. enforce idempotency;
4. mark the order PAID;
5. credit the existing economy ledger;
6. return HTTP 2xx only when the webhook has been handled safely.

This keeps the Web from becoming a second economy authority.

## Admin integration

Set:

```env
ADMIN_BASE_URL=http://127.0.0.1:8787
ADMIN_PUBLIC_URL=https://your-admin-public-url.example
```

`ADMIN_BASE_URL` is server-to-server health access. `ADMIN_PUBLIC_URL` is only the browser link shown in the floating dock/Operations Hub.

The Web does **not** expose a generic Admin write proxy. Admin remains the place for Content/Media/LiveOps writes; Web automatically reads shared DB/media changes.

## Bot integration

Set:

```env
BOT_BASE_URL=http://127.0.0.1:8080
BOT_PUBLIC_URL=https://discord.gg/your-support-server
BOT_HEALTH_PATH=/actuator/health
BOT_SERVICE_TOKEN=...
```

`GAME_CORE_BASE_URL` remains supported by the existing Player Portal action gateway. `BOT_BASE_URL` is used by the V28 health/payment integration and falls back to `GAME_CORE_BASE_URL` when omitted.

## Cloudflare Tunnel

When forwarding the Web through Cloudflare Quick Tunnel, Spring uses forwarded headers, so `/ops.html` can display the current `trycloudflare.com` callback URLs automatically.

For production payments use a stable HTTPS hostname/tunnel. Quick Tunnel URLs change after restart.

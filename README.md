# Lost Kingsland Web — V28 Connected Portal

Professional public website + Player Portal + Codex + Operations Hub for Lost Kingsland.

## V28 headline changes

- New `/ops.html` **Web ↔ Admin ↔ Bot** Integration Hub.
- Fixed circular popup navigation dock on the left-center of every page.
- Three payOS public endpoints are built in:
  - `GET /payment/success`
  - `GET /payment/cancel`
  - `POST /api/payments/payos/webhook`
- payOS webhook is a **relay to Bot/Game Core**. Web does not verify/credit economy itself.
- Admin and Bot health checks are shown in Operations Hub.
- Admin and Bot public shortcuts can appear in the floating dock.
- Shared PostgreSQL/media architecture remains intact: Admin writes; Web reads; Bot/Game Core owns gameplay/economy mutations.
- Professional glass/dark-fantasy visual refresh across the existing site.

## Run

Requires JDK 21 + Maven 3.9+.

```powershell
cd C:\Project\lost-kingsland-web
.\run.ps1
```

Open:

```text
http://127.0.0.1:8788/
http://127.0.0.1:8788/catalog.html
http://127.0.0.1:8788/portal.html
http://127.0.0.1:8788/ops.html
```

## Minimum integration `.env`

```env
WEB_DATA_MODE=DATABASE
DATABASE_URL=jdbc:postgresql://127.0.0.1:5432/lost_kingsland_v4_reconciled
DATABASE_USER=lost_kingsland_web_ro
DATABASE_PASSWORD=YOUR_PASSWORD

ADMIN_BASE_URL=http://127.0.0.1:8787
ADMIN_PUBLIC_URL=

BOT_BASE_URL=http://127.0.0.1:8080
BOT_SERVICE_TOKEN=
BOT_PUBLIC_URL=

PAYOS_WEBHOOK_TARGET_URL=http://127.0.0.1:8080/api/payments/payos/webhook
```

Do not put `PAYOS_API_KEY` or `PAYOS_CHECKSUM_KEY` in the public Web project. Those secrets belong in Bot/Game Core, where the webhook is verified and economy credit is settled.

## payOS URLs

Public the Web through HTTPS, then open:

```text
/ops.html
```

It shows copy-ready Return URL, Cancel URL and Webhook URL based on the current public hostname.

Full architecture/setup notes: `docs/V28_INTEGRATION_HUB.md`.

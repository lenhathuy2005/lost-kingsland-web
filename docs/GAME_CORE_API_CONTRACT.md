# Proposed Web -> Game Core Action Adapter

The supplied project materials specify Game Core responsibilities but do not provide an existing HTTP endpoint contract for a browser client. This document is therefore a **proposed adapter contract**, not a claim that the gameplay backend already implements it.

## Request

```http
POST /web/actions/{action}
Authorization: Bearer <service-token>
Content-Type: application/json
```

```json
{
  "playerId": "uuid",
  "payload": {}
}
```

## Required Game Core behavior

Game Core must resolve the authenticated player again and apply the same application service / invariant path used by Discord. Web-supplied item IDs, market listing IDs, march slot IDs, versions, prices, or stats are untrusted inputs.

Every mutating command should retain the project's existing requirements for ownership checks, expected version/state, idempotency, eligibility, operation identity, ledger/audit, and config snapshot where applicable.

## Suggested actions

### equip
Payload:

```json
{ "itemInstanceId": "uuid", "loadoutId": "uuid-or-null" }
```

### salvage

```json
{ "itemInstanceId": "uuid", "idempotencyKey": "uuid" }
```

### march-withdraw

```json
{ "marchSlotId": "uuid", "expectedVersion": 12, "idempotencyKey": "uuid" }
```

### market-buy

```json
{ "listingId": "uuid", "expectedVersion": 4, "idempotencyKey": "uuid" }
```

Market recipient rarity eligibility must be re-checked inside Game Core at settlement.

## Response

Recommended shape:

```json
{
  "ok": true,
  "stateVersion": 13,
  "result": {},
  "refresh": ["inventory", "marches"]
}
```

Errors should use stable machine codes such as `STATE_STALE`, `NOT_OWNER`, `NOT_ELIGIBLE`, `INSUFFICIENT_RESOURCE`, `ALREADY_SETTLED`, etc.

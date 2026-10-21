# V27 Data Integration

## Single source of truth

All three services point to one PostgreSQL database:

```text
Game/Bot  ─┐
Admin     ─┼─> lost_kingsland_v4_reconciled
Web       ─┘
```

Do not copy the SQL dump into either Web/Admin folder as runtime data.

## Responsibility

- **Game/Bot**: authoritative gameplay/economy/state transitions.
- **Admin**: content/config/media writes with controlled roles/audit.
- **Web**: read-only live views plus future Game Core API actions.

## Version pinning

Equipment/content queries that are versioned use:

```text
LK-V4.0-P15-RC-001
```

Character definitions are the active 40-row Phase-14 catalog carried into final gameplay; Faction Boss catalog is canonical/unversioned in the V27 schema.

## Media

Admin media patch supplies a generic content media layer. Public Web does not need local image files.

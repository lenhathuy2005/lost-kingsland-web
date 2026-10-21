# Web V27 update

- DATABASE mode now pins equipment catalog to `LK-V4.0-P15-RC-001` and `ACTIVE_CANONICAL`.
- Player Portal SQL updated for V27 (`owner_player_id`, one Hero per Player, cultivation fields, City Hall derivation).
- Live rarities and Equipment Sets now come from PostgreSQL instead of stale snapshot data.
- Added live 40-Character and 100-Faction-Boss Codex APIs/UI.
- Added shared media streaming from Admin-managed PostgreSQL artwork.
- Corrected Equipment slots to include OFF_HAND and PET.
- Offline fallback snapshot rebuilt from final V27 dump.
- Added `.env.example`, read-only DB role script and `.env` loader in `run.ps1`.

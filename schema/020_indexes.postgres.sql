-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  field_hash_policies

CREATE INDEX IF NOT EXISTS idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

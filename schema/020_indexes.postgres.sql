-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  field_hash_policies

CREATE INDEX IF NOT EXISTS idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

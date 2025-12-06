-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  field_hash_policies

CREATE INDEX IF NOT EXISTS idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  field_hash_policies

CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  field_hash_policies
CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

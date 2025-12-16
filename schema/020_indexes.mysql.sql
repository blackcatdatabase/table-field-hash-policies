-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  field_hash_policies

CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  field_hash_policies

CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

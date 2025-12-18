-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  field_hash_policies

CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

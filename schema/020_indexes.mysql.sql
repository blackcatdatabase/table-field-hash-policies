-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  field_hash_policies

CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from);

-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  field_hash_policies

ALTER TABLE field_hash_policies ADD CONSTRAINT fk_fhp_profile FOREIGN KEY (profile_id) REFERENCES hash_profiles(id) ON DELETE RESTRICT;

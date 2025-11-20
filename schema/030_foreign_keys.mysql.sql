-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  field_hash_policies
ALTER TABLE field_hash_policies ADD CONSTRAINT fk_fhp_profile FOREIGN KEY (profile_id) REFERENCES hash_profiles(id) ON DELETE RESTRICT;

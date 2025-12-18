-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  field_hash_policies

ALTER TABLE field_hash_policies ADD CONSTRAINT fk_fhp_profile FOREIGN KEY (profile_id) REFERENCES hash_profiles(id) ON DELETE RESTRICT;

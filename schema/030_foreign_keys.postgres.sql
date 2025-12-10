-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  field_hash_policies

ALTER TABLE field_hash_policies ADD CONSTRAINT fk_fhp_profile FOREIGN KEY (profile_id) REFERENCES hash_profiles(id) ON DELETE RESTRICT;

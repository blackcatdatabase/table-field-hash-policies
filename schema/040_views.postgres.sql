-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
-- engine: postgres
-- table:  field_hash_policies

-- Contract view for [field_hash_policies]
CREATE OR REPLACE VIEW vw_field_hash_policies AS
SELECT
  id,
  entity_table,
  field_name,
  profile_id,
  effective_from,
  notes,
  created_at,
  updated_at
FROM field_hash_policies;

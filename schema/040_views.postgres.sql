-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
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

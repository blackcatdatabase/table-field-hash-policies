-- Auto-generated from schema-views-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  field_hash_policies

-- Contract view for [field_hash_policies]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_field_hash_policies AS
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

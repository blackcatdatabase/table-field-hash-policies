<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – field_hash_policies

Effective hashing policy assignments for sensitive columns.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO | — | Table where the field lives. |  |
| field_name | VARCHAR(64) | NO | — | Column name. |  |
| profile_id | BIGINT | NO | — | Hash profile applied (FK hash_profiles.id). |  |
| notes | TEXT | YES | — | Documentation / migration context. |  |
# field_hash_policies

Effective hashing policy assignments for sensitive columns.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO |  | Table where the field lives. |  |
| field_name | mysql: VARCHAR(64) | NO |  | Column name. |  |
| profile_id | mysql: BIGINT | NO |  | Hash profile applied (FK hash_profiles.id). |  |
| effective_from | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the policy takes effect. |  |
| notes | TEXT | YES |  | Documentation / migration context. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_fhp | entity_table, field_name, effective_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_fhp_entity_field | entity_table,field_name,effective_from | CREATE INDEX idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from) |
| uq_fhp | entity_table,field_name,effective_from | UNIQUE KEY uq_fhp (entity_table, field_name, effective_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_fhp_profile | profile_id | hash_profiles(id) | ON DELETE RESTRICT |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_fhp | entity_table, field_name, effective_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_fhp_entity_field | entity_table,field_name,effective_from | CREATE INDEX IF NOT EXISTS idx_fhp_entity_field ON field_hash_policies (entity_table, field_name, effective_from) |
| uq_fhp | entity_table,field_name,effective_from | CONSTRAINT uq_fhp UNIQUE (entity_table, field_name, effective_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_fhp_profile | profile_id | hash_profiles(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_field_hash_policies | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_field_hash_policies | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |

# field_hash_policies

Effective hashing policy assignments for sensitive columns.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| effective_from | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the policy takes effect. |
| entity_table | VARCHAR(64) | NO |  | Table where the field lives. |
| field_name | VARCHAR(64) | NO |  | Column name. |
| id | BIGINT | NO |  | Surrogate primary key. |
| notes | TEXT | YES |  | Documentation / migration context. |
| profile_id | BIGINT | NO |  | Hash profile applied (FK hash_profiles.id). |

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
| vw_field_hash_policies | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_field_hash_policies | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |

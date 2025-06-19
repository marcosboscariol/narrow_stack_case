WITH source AS (
    SELECT
        *
    FROM
        "dbt"."public"."stg_produtos"
)

SELECT
    *
FROM
    source
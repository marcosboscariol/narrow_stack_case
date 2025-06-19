WITH source AS (
    SELECT
        *
    FROM
        "dbt"."public"."stg_clientes"
)

SELECT
    *
FROM
    source
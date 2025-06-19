WITH source AS (
    SELECT
        *
    FROM
        {{ref('stg_clientes')}}
)

SELECT
    *
FROM
    source
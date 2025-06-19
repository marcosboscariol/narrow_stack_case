WITH source AS (
    SELECT
        *
    FROM
        {{ref('stg_produtos')}}
)

SELECT
    *
FROM
    source
WITH source AS (
    SELECT 
        *
    FROM
        "dbt"."public"."clientes"
)

SELECT
    id_cliente,
    nome,
    email,
    cidade,
    estado
FROM
    source
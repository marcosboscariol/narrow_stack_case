WITH source AS (
    SELECT 
        *
    FROM
        "dbt"."public"."produtos"
)

SELECT
    id_produto,
    nome_produto,
    categoria,
    preco
FROM
    source
WITH source AS (
    SELECT 
        *
    FROM
        "dbt"."public"."itens_vendas"
)

SELECT
    id_venda,
    id_produto,
    quantidade,
    preco_unitario
FROM
    source
WITH source AS (
    SELECT 
        *
    FROM
        {{ source('public', 'itens_vendas') }}
)

SELECT
    id_venda,
    id_produto,
    quantidade,
    preco_unitario
FROM
    source
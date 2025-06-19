WITH itens_vendas as (
    SELECT *
    FROM {{ ref('stg_itens_vendas') }}
),

vendas AS (
    SELECT *
    FROM {{ ref('stg_vendas') }}
)

SELECT
    i.id_venda,
    i.id_produto,
    i.quantidade,
    i.preco_unitario,
    v.id_cliente,
    CAST(v.data_venda AS date) AS data_venda,
    i.quantidade * i.preco_unitario AS preco_total_item
FROM
    itens_vendas i
LEFT JOIN
    vendas v ON i.id_venda = v.id_venda
WITH source AS (
    SELECT 
        *
    FROM
        {{ source('public', 'produtos') }}
)

SELECT
    id_produto,
    nome_produto,
    categoria,
    preco
FROM
    source
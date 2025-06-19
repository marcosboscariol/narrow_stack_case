WITH source AS (
    SELECT 
        *
    FROM
        {{ source('public', 'clientes') }}
)

SELECT
    id_cliente,
    nome,
    email,
    cidade,
    estado
FROM
    source

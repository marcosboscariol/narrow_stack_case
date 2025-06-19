
  create view "dbt"."public"."stg_itens_vendas__dbt_tmp"
    
    
  as (
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
  );

  create view "dbt"."public"."stg_vendas__dbt_tmp"
    
    
  as (
    WITH source AS (
    SELECT 
        *
    FROM
        "dbt"."public"."vendas"
)

SELECT
    id_venda,
    id_cliente,
    data_venda,
    valor_total
FROM
    source
  );
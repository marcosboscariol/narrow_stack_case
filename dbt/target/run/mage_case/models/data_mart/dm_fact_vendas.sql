
  
    

  create  table "dbt"."public_mart"."dm_fact_vendas__dbt_tmp"
  
  
    as
  
  (
    WITH itens_vendas as (
    SELECT *
    FROM "dbt"."public"."stg_itens_vendas"
),

vendas AS (
    SELECT *
    FROM "dbt"."public"."stg_vendas"
)

SELECT
    i.id_venda,
    i.id_produto,
    i.quantidade,
    i.preco_unitario,
    v.id_cliente,
    v.data_venda
FROM
    itens_vendas i
LEFT JOIN
    vendas v ON i.id_venda = v.id_venda
  );
  
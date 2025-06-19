
  create view "dbt"."public"."stg_clientes__dbt_tmp"
    
    
  as (
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
  );
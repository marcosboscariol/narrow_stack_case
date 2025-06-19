
  
    

  create  table "dbt"."public_mart"."dm_cliente__dbt_tmp"
  
  
    as
  
  (
    WITH source AS (
    SELECT
        *
    FROM
        "dbt"."public"."stg_clientes"
)

SELECT
    *
FROM
    source
  );
  
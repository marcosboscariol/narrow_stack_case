
  
    

  create  table "dbt"."public_mart"."dm_dim_produtos__dbt_tmp"
  
  
    as
  
  (
    WITH source AS (
    SELECT
        *
    FROM
        "dbt"."public"."stg_produtos"
)

SELECT
    *
FROM
    source
  );
  
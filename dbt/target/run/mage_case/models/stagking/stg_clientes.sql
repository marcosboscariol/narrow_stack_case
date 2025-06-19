
  create view "dbt"."public"."stg_clientes__dbt_tmp"
    
    
  as (
    

select *
from clientes
  );
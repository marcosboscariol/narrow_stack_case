select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select cidade
from "dbt"."public"."stg_clientes"
where cidade is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select estado
from "dbt"."public"."stg_clientes"
where estado is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select categoria
from "dbt"."public"."stg_produtos"
where categoria is null



      
    ) dbt_internal_test
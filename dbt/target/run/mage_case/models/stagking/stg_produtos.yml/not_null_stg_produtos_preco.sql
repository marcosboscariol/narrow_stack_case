select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select preco
from "dbt"."public"."stg_produtos"
where preco is null



      
    ) dbt_internal_test
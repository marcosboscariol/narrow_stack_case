select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from "dbt"."public"."stg_produtos"

where not(preco >= 0)


      
    ) dbt_internal_test
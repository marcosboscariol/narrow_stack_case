select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from "dbt"."public"."stg_clientes"

where not(estado char_length(estado) = 2)


      
    ) dbt_internal_test
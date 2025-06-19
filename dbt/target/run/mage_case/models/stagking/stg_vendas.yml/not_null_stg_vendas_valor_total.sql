select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select valor_total
from "dbt"."public"."stg_vendas"
where valor_total is null



      
    ) dbt_internal_test
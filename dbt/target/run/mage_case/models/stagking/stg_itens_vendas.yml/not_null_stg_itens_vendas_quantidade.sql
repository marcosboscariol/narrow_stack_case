select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select quantidade
from "dbt"."public"."stg_itens_vendas"
where quantidade is null



      
    ) dbt_internal_test
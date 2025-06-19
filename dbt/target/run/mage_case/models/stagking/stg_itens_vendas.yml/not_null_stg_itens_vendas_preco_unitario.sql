select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select preco_unitario
from "dbt"."public"."stg_itens_vendas"
where preco_unitario is null



      
    ) dbt_internal_test
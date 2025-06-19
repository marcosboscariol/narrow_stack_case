select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from "dbt"."public"."stg_itens_vendas"

where not(preco_unitario preco_unitario >= 0)


      
    ) dbt_internal_test
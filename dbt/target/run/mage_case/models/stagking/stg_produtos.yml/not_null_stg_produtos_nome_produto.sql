select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select nome_produto
from "dbt"."public"."stg_produtos"
where nome_produto is null



      
    ) dbt_internal_test
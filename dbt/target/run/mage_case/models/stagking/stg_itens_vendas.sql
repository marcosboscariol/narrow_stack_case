
  create view "dbt"."public"."stg_itens_vendas__dbt_tmp"
    
    
  as (
    

select *
from itens_vendas
  );
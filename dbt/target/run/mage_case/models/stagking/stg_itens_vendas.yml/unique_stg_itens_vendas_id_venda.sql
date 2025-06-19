select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    id_venda as unique_field,
    count(*) as n_records

from "dbt"."public"."stg_itens_vendas"
where id_venda is not null
group by id_venda
having count(*) > 1



      
    ) dbt_internal_test
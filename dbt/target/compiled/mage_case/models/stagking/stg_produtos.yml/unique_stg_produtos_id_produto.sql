
    
    

select
    id_produto as unique_field,
    count(*) as n_records

from "dbt"."public"."stg_produtos"
where id_produto is not null
group by id_produto
having count(*) > 1







select
    1
from "dbt"."public"."stg_itens_vendas"

where not(preco_unitario preco_unitario >= 0)


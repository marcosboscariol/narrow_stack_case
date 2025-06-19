



select
    1
from "dbt"."public"."stg_itens_vendas"

where not(quantidade > 0)






select
    1
from "dbt"."public"."stg_itens_vendas"

where not(quantidade quantidade > 0)






select
    1
from "dbt"."public"."stg_vendas"

where not(valor_total >= 0)


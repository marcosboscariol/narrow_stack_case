



select
    1
from "dbt"."public"."stg_produtos"

where not(preco >= 0)


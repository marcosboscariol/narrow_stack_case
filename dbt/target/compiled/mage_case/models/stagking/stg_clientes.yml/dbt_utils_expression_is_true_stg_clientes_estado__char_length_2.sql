



select
    1
from "dbt"."public"."stg_clientes"

where not(estado char_length() = 2)


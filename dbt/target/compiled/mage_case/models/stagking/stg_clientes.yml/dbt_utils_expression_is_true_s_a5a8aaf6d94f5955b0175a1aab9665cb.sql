



select
    1
from "dbt"."public"."stg_clientes"

where not(estado  IS NOT NULL AND char_length(estado) = 2)






select
    1
from "dbt"."public"."stg_clientes"

where not(estado  IS NULL AND char_length(estado) = 2)


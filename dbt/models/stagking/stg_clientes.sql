{{ config(materialized='view') }}

select *
from clientes

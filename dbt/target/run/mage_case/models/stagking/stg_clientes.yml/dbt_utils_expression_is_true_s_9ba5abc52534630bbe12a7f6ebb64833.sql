select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from "dbt"."public"."stg_clientes"

where not(estado char_length("dbt"."public_dbt_test__audit"."dbt_utils_expression_is_true_s_9ba5abc52534630bbe12a7f6ebb64833".estado) = 2)


      
    ) dbt_internal_test
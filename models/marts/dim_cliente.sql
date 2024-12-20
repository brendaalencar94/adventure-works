with
    dim_cliente as (
        select *
        from {{ ref('int_vendas__prep_cliente') }}
    )
select *
from dim_cliente
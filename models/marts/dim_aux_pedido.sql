with
    dim_aux_pedido as (
        select *
        from {{ ref('int_vendas__prep_aux_pedido') }}
    )
select *
from dim_aux_pedido
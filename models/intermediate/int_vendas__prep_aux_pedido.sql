with
    aux_pedido as (
        select *
        from {{ ref('stg_erp__ordem_venda') }}
    )

    , modelar_aux_pedido as (
        select
        PK_ORDEM_VENDA
        from aux_pedido
    )
select *
from modelar_aux_pedido
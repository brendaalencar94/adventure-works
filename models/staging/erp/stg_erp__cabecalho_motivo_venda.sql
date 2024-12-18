with
    fonte_cab_mot_venda as (
        select
        cast(SALESORDERID as int) as pk_pedido_venda
        , cast(SALESREASONID as int) as fk_motivo_venda
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'SALESORDERHEADERSALESREASON')}}
    )
select *
from fonte_cab_mot_venda
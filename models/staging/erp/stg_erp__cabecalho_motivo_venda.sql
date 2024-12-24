with
    fonte_cab_mot_venda as (
        select
            cast(salesorderid as int) as fk_ordem_venda,
            cast(salesreasonid as int) as fk_motivo_venda
        -- , cast(MODIFIEDDATE as int) as 
        from {{ source("erp", "SALESORDERHEADERSALESREASON") }}
    )
select *
from fonte_cab_mot_venda

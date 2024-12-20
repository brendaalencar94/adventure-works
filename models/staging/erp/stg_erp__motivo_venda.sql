with
    fonte_mot_venda as (
        select
        cast(SALESREASONID as int) as pk_mot_venda
        , cast(NAME as string) as desc_mot_venda
        , cast(REASONTYPE as string) as tp_mot_venda
        --, cast(MODIFIEDDATE as string) as 
        from {{source('erp', 'SALESREASON')}}
    )
select *
from fonte_mot_venda
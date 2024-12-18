with
    fonte_cartao_cred as (
        select
        cast(CREDITCARDID as int) as pk_cartao_cred
        ,cast(CARDTYPE as string) as tp_cartao_cred
        --,cast(CARDNUMBER as int) as 
        --,cast(EXPMONTH as int) as 
        --,cast(EXPYEAR as int) as 
        --,cast(MODIFIEDDATE as date) as 
        from {{source('erp', 'CREDITCARD')}}
    )
select *
from fonte_cartao_cred
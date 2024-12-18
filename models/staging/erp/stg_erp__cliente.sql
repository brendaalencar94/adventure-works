with
    fonte_cliente as (
        select
        cast(CUSTOMERID as int) as pk_cliente
        , cast(PERSONID as int) as fk_pessoa
        --, cast(STOREID as int) as 
        --, cast(TERRITORYID as int) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'CUSTOMER')}}
    )
select *
from fonte_cliente
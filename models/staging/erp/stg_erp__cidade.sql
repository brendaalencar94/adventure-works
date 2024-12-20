with
    fonte_cidade as (
        select
        cast(ADDRESSID as int) as pk_endereco
        --, cast(ADDRESSLINE1 as int) as 
        --, cast(ADDRESSLINE2 as int) as 
        , cast(CITY as string) as desc_cidade
        , cast(STATEPROVINCEID as int) as fk_estado
        --, cast(POSTALCODE as int) as 
        --, cast(SPATIALLOCATION as int) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'ADDRESS')}}
    )
select *
from fonte_cidade
with
    fonte_estado as (
        select
        cast(STATEPROVINCEID as int) as pk_estado
        --, cast(STATEPROVINCECODE as string) as 
        , cast(COUNTRYREGIONCODE as string) as fk_pais
        --, cast(ISONLYSTATEPROVINCEFLAG as string) as 
        , cast(NAME as string) as desc_estado
        --, cast(TERRITORYID as int) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'STATEPROVINCE')}}
    )
select *
from fonte_estado
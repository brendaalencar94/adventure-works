with
    fonte_pais as (
        select
        cast(COUNTRYREGIONCODE as string) as pk_pais
        , cast(NAME as string) as desc_pais
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'COUNTRYREGION')}}
    )
select *
from fonte_pais
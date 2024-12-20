with
    fonte_pessoa as (
        select
        cast(BUSINESSENTITYID as int) as pk_pessoa
        , cast(PERSONTYPE as string) as tp_cliente
        , FIRSTNAME::varchar || ' ' || MIDDLENAME || ' ' || LASTNAME as nome_completo_cliente
        --, cast(NAMESTYLE as string) as 
        --, cast(TITLE as string) as 
        --, cast(FIRSTNAME as string) as 
        --, cast(MIDDLENAME as string) as 
        --, cast(LASTNAME as string) as 
        --, cast(SUFFIX as string) as 
        --, cast(EMAILPROMOTION as string) as 
        --, cast(ADDITIONALCONTACTINFO as int) as 
        --, cast(DEMOGRAPHICS as int) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE  as int) as 
        from {{source('erp', 'PERSON')}}
    )
select *
from fonte_pessoa
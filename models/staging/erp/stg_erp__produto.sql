with
    fonte_produto as (
        select
        cast(PRODUCTID as int) as pk_produto
        , cast(NAME as string) as desc_produto
        --, cast(PRODUCTNUMBER as string) as 
        --, cast(MAKEFLAG as string) as 
        --, cast(FINISHEDGOODSFLAG as string) as 
        --, cast(COLOR as string) as 
        --, cast(SAFETYSTOCKLEVEL as int) as 
        --, cast(REORDERPOINT as int) as 
        --, cast(STANDARDCOST as int) as 
        --, cast(LISTPRICE as int) as 
        --, cast(SIZE as sting) as 
        --, cast(SIZEUNITMEASURECODE as string) as 
        --, cast(WEIGHTUNITMEASURECODE as string) as 
        --, cast(WEIGHT as int) as 
        --, cast(DAYSTOMANUFACTURE as int) as 
        --, cast(PRODUCTLINE as string) as 
        --, cast(CLASS as string) as 
        --, cast(STYLE as string) as 
        , cast(PRODUCTSUBCATEGORYID as int) as fk_subcategoria_prod
        , cast(PRODUCTMODELID as int) as fk_modelo_prod
        --, cast(SELLSTARTDATE as date) as 
        --, cast(SELLENDDATE as date) as 
        --, cast(DISCONTINUEDDATE as date) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'PRODUCT')}}
    )
select *
from fonte_produto
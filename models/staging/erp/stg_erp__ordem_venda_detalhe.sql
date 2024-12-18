with
    fonte_odem_venda_det as (
        select
        cast(SALESORDERID as int) as fk_ordem_venda
        , cast(SALESORDERDETAILID as int) as pk_ordem_venda_detalhe
        --, cast(CARRIERTRACKINGNUMBER as int) as 
        --, cast(ORDERQTY as int) as 
        , cast(PRODUCTID as int) as fk_produto
        --, cast(SPECIALOFFERID as int) as 
        , cast(UNITPRICE as float) as val_preco_unit
        , cast(UNITPRICEDISCOUNT as float) as val_desconto
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'SALESORDERDETAIL')}}
    )
select *
from fonte_odem_venda_det
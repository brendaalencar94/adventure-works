with
    fonte_odem_venda_det as (
        select
        SALESORDERID::varchar || '-' || PRODUCTID::varchar as pk_ordem_item
        , cast(SALESORDERID as int) as fk_ordem_venda
        , cast(SALESORDERDETAILID as int) as pk_ordem_detalhe
        --, cast(CARRIERTRACKINGNUMBER as int) as 
        , cast(ORDERQTY as int) as quantidade
        , cast(PRODUCTID as int) as fk_produto
        --, cast(SPECIALOFFERID as int) as 
        , cast(UNITPRICE as float) as preco_unidade
        , cast(UNITPRICEDISCOUNT as float) as desconto
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'SALESORDERDETAIL')}}
    )
select *
from fonte_odem_venda_det
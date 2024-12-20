with
    fonte_ordem_venda as (
        select
        cast(SALESORDERID as int) as pk_ordem_venda
        --, cast(REVISIONNUMBER as int) as 
        , cast(ORDERDATE as date) as data_ordem
        , cast(DUEDATE as date) as data_vencimento
        , cast(SHIPDATE as date) as data_envio
        , cast(STATUS as string) as status
        --, cast(ONLINEORDERFLAG as int) as 
        --, cast(PURCHASEORDERNUMBER as int) as 
        --, cast(ACCOUNTNUMBER as int) as 
        , cast(CUSTOMERID as int) as fk_cliente
        --, cast(SALESPERSONID as int) as 
        --, cast(TERRITORYID as int) as 
        , cast(BILLTOADDRESSID as int) as fk_endereco_fatura
        , cast(SHIPTOADDRESSID as int) as fk_endereco_envio
        --, cast(SHIPMETHODID as int) as 
        , cast(CREDITCARDID as int) as fk_cartao_cred
        --, cast(CREDITCARDAPPROVALCODE as int) as 
        --, cast(CURRENCYRATEID as int) as 
        --, cast(SUBTOTAL as int) as 
        --, cast(TAXAMT as int) as 
        --, cast(FREIGHT as int) as 
        --, cast(TOTALDUE as int) as 
        --, cast(COMMENT as int) as 
        --, cast(ROWGUID as int) as 
        --, cast(MODIFIEDDATE as int) as 
        from {{source('erp', 'SALESORDERHEADER')}}
    )
select *
from fonte_ordem_venda
with
    ordem as (
        select *
        from {{ ref('stg_erp__ordem_venda') }}
    )

    , ordem_detalhe as (
        select *
        from {{ ref('stg_erp__ordem_venda_detalhe') }}
    )

    , modelar_ordem_venda as (
        select
        ordem_detalhe.PK_ORDEM_ITEM
        , ordem.PK_ORDEM_VENDA
        , ordem_detalhe.PK_ORDEM_DETALHE
        , ordem.FK_CLIENTE
        , ordem.FK_ENDERECO_FATURA
        , ordem.FK_ENDERECO_ENVIO
        , ordem.FK_CARTAO_CRED
        --, ordem_detalhe.FK_ORDEM_VENDA
        , ordem_detalhe.FK_PRODUTO
        , ordem.DATA_ORDEM
        , ordem.DATA_VENCIMENTO
        , ordem.DATA_ENVIO
        , ordem.STATUS
        , ordem_detalhe.QUANTIDADE
        , ordem_detalhe.PRECO_UNIDADE
        , ordem_detalhe.DESCONTO
        from ordem_detalhe
        left join ordem on ordem.PK_ORDEM_VENDA = ordem_detalhe.FK_ORDEM_VENDA
    )

    , metricas as (
        select
        PK_ORDEM_ITEM
        , PK_ORDEM_VENDA
        , PK_ORDEM_DETALHE
        , FK_CLIENTE
        , FK_ENDERECO_FATURA
        , FK_ENDERECO_ENVIO
        , FK_CARTAO_CRED
        --, FK_ORDEM_VENDA
        , FK_PRODUTO
        , DATA_ORDEM
        , DATA_VENCIMENTO
        , DATA_ENVIO
        , STATUS
        , QUANTIDADE
        , cast(PRECO_UNIDADE as numeric(18,2)) as PRECO_UNIDADE
        , DESCONTO
        , cast(PRECO_UNIDADE * QUANTIDADE as numeric(18,2)) as faturamento_bruto
        , cast(faturamento_bruto - (faturamento_bruto * DESCONTO) as numeric(18,2)) as faturamento_liquido
        --, faturamento_liquido / count(distinct PK_ORDEM_VENDA) over ( partition by DATA_ORDEM) as ticket_medio
        from modelar_ordem_venda
    )
select *
from metricas
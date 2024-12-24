with
    cab_mot_venda as (
        select *
        from {{ ref('stg_erp__cabecalho_motivo_venda') }}
    )

    , mot_venda as (
        select *
        from {{ ref('stg_erp__motivo_venda') }}
    )

    , modelar_mot_vendas as (
        select
        cab_mot_venda.FK_ORDEM_VENDA
        , mot_venda.DESC_MOT_VENDA
        , mot_venda.TP_MOT_VENDA
        from cab_mot_venda
        left join mot_venda on cab_mot_venda.FK_MOTIVO_VENDA = mot_venda.PK_MOT_VENDA
    )
select *
from modelar_mot_vendas
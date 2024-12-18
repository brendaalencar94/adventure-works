with
    cliente as (
        select *
        from {{ ref('stg_erp__cliente') }}
    )

    , pessoa as (
        select *
        from {{ ref('stg_erp__pessoa') }}
    )

    , modelar_cliente as (
        select
        cliente.PK_CLIENTE
        , pessoa.TP_CLIENTE
        , pessoa.NOME_COMPLETO_CLIENTE
        from cliente
        left join pessoa on cliente.FK_PESSOA = pessoa.PK_PESSOA
    )
select *
from modelar_cliente
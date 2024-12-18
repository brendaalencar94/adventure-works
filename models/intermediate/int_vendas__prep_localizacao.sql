with
    cidade as (
        select *
        from {{ ref('stg_erp__cidade') }}
    )

    , estado as (
        select *
        from {{ ref('stg_erp__estado') }}
    )

    , pais as (
        select *
        from {{ ref('stg_erp__pais') }}
    )

    , modelar_local as (
        select
        cidade.PK_ENDERECO
        , cidade.DESC_CIDADE
        --, cidade.FK_ESTADO
        --, estado.PK_ESTADO
        --, estado.FK_PAIS
        , estado.DESC_ESTADO
        --, pais.PK_PAIS
        , pais.DESC_PAIS
        from cidade
        left join estado on cidade.FK_ESTADO = estado.PK_ESTADO
        left join pais on estado.FK_PAIS = pais.PK_PAIS
    )
select *
from modelar_local
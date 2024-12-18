with
    cartao_credito as (
        select *
        from {{ ref('stg_erp__cartao_credito') }}
    )
select *
from cartao_credito
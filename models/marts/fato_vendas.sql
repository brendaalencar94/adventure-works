with
    fato_vendas as (
        select *
        from {{ ref('int_vendas__prep_ordem_venda') }}
    )
select *
from fato_vendas
with
    dim_produto as (
        select *
        from {{ ref('int_vendas__prep_produto') }}
    )
select *
from dim_produto
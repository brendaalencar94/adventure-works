with
    dim_loc as (
        select *
        from {{ ref('int_vendas__prep_localizacao') }}
    )
select *
from dim_loc
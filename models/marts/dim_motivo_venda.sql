with
    dim_mot_venda as (
        select *
        from {{ ref('int_vendas__prep_motivo_venda') }}
    )
select *
from dim_mot_venda
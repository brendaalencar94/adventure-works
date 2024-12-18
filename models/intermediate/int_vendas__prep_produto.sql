with
    produto as (
        select *
        from {{ ref('stg_erp__produto') }}
    )
select *
from produto
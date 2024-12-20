with
    dim_pagamento as (
        select *
        from {{ ref('int_vendas__prep_cartao_cred') }}
    )
select *
from dim_pagamento
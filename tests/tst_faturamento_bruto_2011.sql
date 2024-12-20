/*  
    Este teste atende ao pedido do CEO, Carlos Silveira. Que deve garantir 
    que a informação do faturamento bruto de 2021 está de acordo com o 
    levantado pela equipe de auditoria da contabilidade. 
    R$ 12.646.113,02 
*/

with
    fatur_bruto_em_2011 as (
        select sum(faturamento_bruto) as soma_total_bruto
        from {{ ref('int_vendas__prep_ordem_venda') }}
        where DATA_ORDEM between '2011-01-01' and '2011-12-31'
    ) -- R$ 12.646.113,02

select soma_total_bruto
from fatur_bruto_em_2011
where soma_total_bruto not between 12646112.00 and 12646114.00
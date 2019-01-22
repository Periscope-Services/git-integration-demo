select
  type
  , [date:day] as date
  , units
  , sum(usage) as usage
  , sum(replace(cost, '$', '')::float)::varchar as cost
from
  [electric_data]
group by
  1,2,3
union all
select
  type
  , [date:day] as date
  , units
  , usage
  , replace(cost,'$', '')
from
  [gas_data]
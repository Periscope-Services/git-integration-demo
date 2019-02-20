select
  sum(replace(cost, '$', '')::float) as electric_total
from
  [gas_data]
where
  [date=daterange]
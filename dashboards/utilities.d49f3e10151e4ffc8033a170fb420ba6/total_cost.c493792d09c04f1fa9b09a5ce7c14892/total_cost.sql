select
  sum(replace(cost, '$', '')::float)
from
  [gas_electricity_view]
where
  [date=daterange]
select
  sum(replace(cost, '$', '')::float) as electric_total
from
  [electric_data]
where
  [date=daterange]
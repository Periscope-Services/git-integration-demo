select
  [start_date:date] as date
  , appliance
  , sum(energy_consumed_kwh)
from
  [verv_csv]
where
  start != 'N/A'
  and [date=daterange]
group by
  1
  , 2
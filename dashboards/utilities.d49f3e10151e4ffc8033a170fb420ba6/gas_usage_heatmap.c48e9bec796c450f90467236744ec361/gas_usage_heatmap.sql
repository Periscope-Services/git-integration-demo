select
  [date:month_of_year] as month
  , [date:day_of_week] as day
  , sum(usage) as usage
from
  [gas_data]
group by 1,2
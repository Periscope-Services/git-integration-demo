select
  [date(purchase_date):week]
  , purchase_platform
  , sum(price)
from
  [demo_data_view]
where
  [purchase_date=daterange]
group by
  1
  , 2

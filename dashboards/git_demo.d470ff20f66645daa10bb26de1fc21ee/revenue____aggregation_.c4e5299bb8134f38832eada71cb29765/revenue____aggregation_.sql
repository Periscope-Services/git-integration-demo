select
  [date(purchase_date):aggregation]
  , purchase_platform
  , sum(price)
--hi

--test
from
  [demo_data_view]
where
--   [platform=device]
--   and [source=origin]
  [purchase_date=daterange]
group by
  1
  , 2
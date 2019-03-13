select
  [date(purchase_date):aggregation]
  , purchase_platform
  , sum(price)
--hi
from
  [demo_data_view]
where
--   [platform=device]
--   and [source=origin]
purchase_date > '2014-01-01'
group by
  1
  , 2
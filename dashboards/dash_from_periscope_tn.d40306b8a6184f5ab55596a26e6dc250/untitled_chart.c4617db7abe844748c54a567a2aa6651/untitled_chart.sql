select
  price
  , platform
  , created_at
  , count(*)
from
  periscope_views.purchases
group by
  3
  , 2
  , 1
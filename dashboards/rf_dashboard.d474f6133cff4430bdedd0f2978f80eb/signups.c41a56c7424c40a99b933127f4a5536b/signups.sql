select --comment2
  [created_at:month]
  , count(distinct id)
from
  periscope_views.users
group by
  1
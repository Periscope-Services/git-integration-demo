select --comment2
  [created_at:month]
  , count(distinct id) + 1
from
  periscope_views.users
group by
  1
select
  t.*
from
  (
    select
      [created_at:month] as date
      , [sum(price):$] as revenue
    from
      periscope_views.purchases
    where
      [platform=tn_Device]
    group by
      created_at
  )
  t
where
  [date:ytd]
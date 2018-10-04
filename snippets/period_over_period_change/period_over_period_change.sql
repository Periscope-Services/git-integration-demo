select
  date
  , [field]
  , case
    when lag([field]) over(order by date) is null
      then null
    else 1.0 *[field] / lag([field]) over(order by date) - 1
  end as period_over_period_change_perc
  , case
    when lag([field]) over(order by date) is null
      then null
    else [field] - lag([field]) over(order by date) - 1
  end as period_over_period_change_value
  , case
    when lag([field]) over(order by date) is null
      then null
    else (case when lag([field]) over(order by date) > [field] then 'negative' else 'positive' end)
  end as period_over_period_change_direction
from
  (
    select
      [field]
      , [[date]:[aggregation]] as date
    from
      [table]
  )
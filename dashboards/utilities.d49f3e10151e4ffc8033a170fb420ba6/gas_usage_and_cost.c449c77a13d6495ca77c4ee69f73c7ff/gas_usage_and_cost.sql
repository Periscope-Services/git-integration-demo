select
  [date:aggregation]
  , usage
  , cost

from
  [gas_data]
where
  [date=daterange]
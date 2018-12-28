select
  [date:aggregation]
  , units
  , usage
  , cost
from
  [gas_electricity_view]
where
  [date=daterange]
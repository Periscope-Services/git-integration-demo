select
  type
  , date
  , usage
  , units
  , cost
from
  [electric_data]
union all
select
  type
  , date
  , usage
  , units
  , cost
from
  [gas_data]
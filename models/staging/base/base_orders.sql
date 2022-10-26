select distinct
    identifier
    , restaurant_identifier
    , payment_method
    , DISHES_IDS
    , amount
    , created_at
from {{ source('restaurants_sources', 'orders') }}
select 
    identifier
    , restaurant_identifier
    , payment_method
    , DISHES_IDS
    , amount
    , created_at
from
    {{ mockable_source('sources', 'orders','sample_orders') }}
select distinct
    identifier
    , restaurant_identifier
    , payment_method
    , amount
    , created_at
from {{ source('all_orders', 'orders') }}
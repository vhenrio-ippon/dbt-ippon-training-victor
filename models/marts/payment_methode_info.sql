select
    r.name,
    {% for payment_method in var('payment_methods') %}
    coalesce(sum(case when o.payment_method = '{{payment_method}}' then o.amount end), 0)    as  {{payment_method}}
    {% if not loop.last %},{% endif %}
    {% endfor %}
from 
    {{ ref('base_restaurants') }}   as r
left join
    {{ ref('base_orders') }}        as o
        on o.restaurant_identifier = r.identifier
group by
    1
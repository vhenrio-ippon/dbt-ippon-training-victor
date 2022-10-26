select
    d.identifier
    , d.name
    , count(*)                                             as nb_ordered
    , sum(d.selling_price)                                 as global_turnover
    , sum(d.production_cost)                               as global_profit
    , date_trunc('hour', to_timestamp(odf.created_at))     as hour
from
    {{ ref('flatten_ids_dishes') }}   as odf
left join
    {{ ref('base_dishes') }} as d
    on odf.dish_id = d.identifier
group by
    d.identifier
    , d.name
    , hour
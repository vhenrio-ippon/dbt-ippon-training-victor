SELECT 
    sum(O.AMOUNT) as CA
    , R.NAME
FROM 
    {{ source('all_orders', 'orders') }} as O
LEFT JOIN 
    {{ref('restaurants')}} as R
        ON O.RESTAURANT_IDENTIFIER = R.IDENTIFIER
GROUP BY NAME
ORDER BY CA DESC
SELECT 
    sum(O.AMOUNT) as CA
    , R.NAME
    , R.ADDRESS
FROM 
    {{ref('base_orders')}} as O
LEFT JOIN 
    {{ref('restaurants')}} as R
        ON O.RESTAURANT_IDENTIFIER = R.IDENTIFIER
GROUP BY R.NAME,R.ADDRESS
ORDER BY CA DESC
LIMIT {{ var('classement_size') }}
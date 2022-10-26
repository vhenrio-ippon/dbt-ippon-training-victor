{%set columns_to_compare = '
IDENTIFIER
,NAME
,NB_ORDERED
,GLOBAL_TURNOVER
,GLOBAL_PROFIT
,HOUR'
%}
    

{{ is_same_table('expect_best_dishes_per_hours', 'best_dishes_per_hours', columns_to_compare) }}
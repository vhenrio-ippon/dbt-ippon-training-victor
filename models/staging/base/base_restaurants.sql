select distinct
    identifier
    , name
    , address
    , nb_emplyees
    , open_on_sunday
from {{ ref('restaurants') }}
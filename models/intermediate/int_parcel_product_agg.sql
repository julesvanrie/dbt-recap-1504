select
    parcel_id
    , sum(qty) as nb_items
    , count(*) as nb_models
from
    {{ ref('stg_raw__parcel_product') }}
group by
    parcel_id
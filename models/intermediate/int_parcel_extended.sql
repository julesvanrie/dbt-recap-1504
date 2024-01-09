select 
    *
from 
    {{ ref("int_parcel")}}
join
    {{ ref("int_parcel_product_agg")}}
using
    (parcel_id)
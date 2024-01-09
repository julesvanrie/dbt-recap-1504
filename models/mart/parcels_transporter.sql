select
    transporter
    , count(*) as nb_parcels
    , sum(delayed) as nb_delayed
    , avg(delayed) as pct_delayed
from 
    {{ ref('int_parcel_extended') }}
group by
    transporter

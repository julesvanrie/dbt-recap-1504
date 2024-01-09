with 

source as (

    select * from {{ source('raw', 'parcel') }}

),

renamed as (

    select
        parcel_id,
        parcel_tracking,
        transporter,
        priority,
        parse_date("%b %e, %Y", date_purchase) as date_purchase,
        parse_date("%b %e, %Y", date_shipping) as date_shipping,
        parse_date("%b %e, %Y", date_delivery) as date_delivery,
        parse_date("%b %e, %Y", datecancelled) as date_cancelled

    from source

)

select * from renamed

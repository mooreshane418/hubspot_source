with base as (

    select *
    from {{ source('hubspot','engagement_contact')}}

), fields as (

    select
        _fivetran_synced,
        contact_id,
        engagement_id
    from base
    
)

select *
from fields
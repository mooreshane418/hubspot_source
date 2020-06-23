with base as (

    select *
    from {{ source('hubspot','engagement')}}

), fields as (

    select
        _fivetran_synced,
        active as is_active,
        activity_type,
        created_at as created_timestamp,
        id as engagement_id,
        last_updated as last_updated_timestamp,
        owner_id,
        portal_id,
        timestamp as occurred_timestamp,
        type as engagement_type
    from base
    
)

select *
from fields
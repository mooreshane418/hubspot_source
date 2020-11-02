{{ config(enabled=fivetran_utils.enabled_vars(['hubspot_marketing_enabled','hubspot_email_event_enabled','hubspot_email_event_open_enabled'])) }}

with base as (

    select *
    from {{ var('email_event_open')}}

), fields as (

    select
        _fivetran_synced,
        browser,
        duration as duration_open,
        id as event_id,
        ip_address,
        location as geo_location,
        user_agent
    from base
    
)

select *
from fields
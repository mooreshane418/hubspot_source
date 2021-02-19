{{ config(enabled=enabled_vars(['hubspot_service_enabled','hubspot_ticket_enabled'])) }}

with base as (

    select *
    from {{ var('ticket_company') }}

), fields as (

    select
        _fivetran_synced,
        ticket_id,
        company_id

    from base

)

select *
from fields

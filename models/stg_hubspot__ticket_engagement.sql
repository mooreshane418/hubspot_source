{{ config(enabled=var('hubspot_service_enabled', False)) }}

with base as (

    select *
    from {{ var('ticket_engagement') }}

), macro as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_hubspot__ticket_engagement_tmp')),
                staging_columns=get_ticket_engagement_columns()
            )
        }}
    from base

), fields as (

    select
        _fivetran_synced,
        ticket_id,
        engagement_id

    from macro

)

select *
from fields

with base as (

    select *
    from {{ var('company_property_history') }}

), fields as (

    select
        _fivetran_synced,
        company_id,
        name as field_name,
        source as change_source,
        source_id as change_source_id,
        timestamp as change_timestamp,
        value as new_value
    from base
    
)

select *
from fields
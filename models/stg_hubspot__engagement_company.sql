with base as (

    select *
    from {{ var('engagement_company')}}

), fields as (

    select
        _fivetran_synced,
        company_id,
        engagement_id
    from base
    
)

select *
from fields
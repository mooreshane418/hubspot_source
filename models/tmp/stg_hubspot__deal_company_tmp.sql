{{ config(enabled=fivetran_utils.enabled_vars(['hubspot_sales_enabled','hubspot_deal_enabled','hubspot_deal_company'])) }}

select *
from {{ var('deal_company') }}

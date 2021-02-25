{% macro get_company_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "portal_id", "datatype": dbt_utils.type_int()},
    {"name": "property_address", "datatype": dbt_utils.type_string()},
    {"name": "property_address_2", "datatype": dbt_utils.type_string()},
    {"name": "property_annualrevenue", "datatype": dbt_utils.type_float()},
    {"name": "property_city", "datatype": dbt_utils.type_string()},
    {"name": "property_country", "datatype": dbt_utils.type_string()},
    {"name": "property_createdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_description", "datatype": dbt_utils.type_string()},
    {"name": "property_domain", "datatype": dbt_utils.type_string()},
    {"name": "property_engagements_last_meeting_booked", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_facebook_company_page", "datatype": dbt_utils.type_string()},
    {"name": "property_first_contact_createdate", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_first_conversion_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_first_conversion_event_name", "datatype": dbt_utils.type_string()},
    {"name": "property_founded_year", "datatype": dbt_utils.type_int()},
    {"name": "property_hs_analytics_first_timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_analytics_first_visit_timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_analytics_last_timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_analytics_last_visit_timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_analytics_num_page_views", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_analytics_num_visits", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_analytics_source", "datatype": dbt_utils.type_string()},
    {"name": "property_hs_analytics_source_data_1", "datatype": dbt_utils.type_string()},
    {"name": "property_hs_analytics_source_data_2", "datatype": dbt_utils.type_string()},
    {"name": "property_hs_last_booked_meeting_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_last_logged_call_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_last_open_task_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_last_sales_activity_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_last_sales_activity_timestamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_lastmodifieddate", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_latest_meeting_activity", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_num_blockers", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_num_contacts_with_buying_roles", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_num_decision_makers", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_num_open_deals", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_sales_email_last_replied", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_hs_target_account_probability", "datatype": dbt_utils.type_float()},
    {"name": "property_hs_total_deal_value", "datatype": dbt_utils.type_float()},
    {"name": "property_industry", "datatype": dbt_utils.type_string()},
    {"name": "property_is_public", "datatype": "boolean"},
    {"name": "property_linkedin_company_page", "datatype": dbt_utils.type_string()},
    {"name": "property_linkedinbio", "datatype": dbt_utils.type_string()},
    {"name": "property_name", "datatype": dbt_utils.type_string()},
    {"name": "property_notes_last_contacted", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_notes_last_updated", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_notes_next_activity_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_num_associated_contacts", "datatype": dbt_utils.type_float()},
    {"name": "property_num_contacted_notes", "datatype": dbt_utils.type_float()},
    {"name": "property_num_conversion_events", "datatype": dbt_utils.type_float()},
    {"name": "property_num_notes", "datatype": dbt_utils.type_float()},
    {"name": "property_numberofemployees", "datatype": dbt_utils.type_float()},
    {"name": "property_phone", "datatype": dbt_utils.type_string()},
    {"name": "property_recent_conversion_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "property_recent_conversion_event_name", "datatype": dbt_utils.type_string()},
    {"name": "property_state", "datatype": dbt_utils.type_string()},
    {"name": "property_timezone", "datatype": dbt_utils.type_string()},
    {"name": "property_total_money_raised", "datatype": dbt_utils.type_string()},
    {"name": "property_twitterhandle", "datatype": dbt_utils.type_string()},
    {"name": "property_web_technologies", "datatype": dbt_utils.type_string()},
    {"name": "property_website", "datatype": dbt_utils.type_string()},
    {"name": "property_zip", "datatype": dbt_utils.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}

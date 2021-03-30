{% macro get_company_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_int()},
    {"name": "is_deleted", "datatype": "boolean"}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('hubspot__company_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
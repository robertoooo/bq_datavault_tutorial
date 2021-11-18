{%- set source_model = "stg_salesorderitems" -%}
{%- set src_pk = "SALESORDER_PK" -%}
{%- set src_nk = "SALESORDERID" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}
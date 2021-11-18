{%- set source_model = "stg_salesorderitems" -%}
{%- set src_pk = "SALESORDER_PK" -%}
{%- set src_hashdiff = "SALESORDER_HASHDIFF" -%}
{%- set src_payload = ["SALESORDERID","SALESORDERITEM", "PRODUCTID", "NOTEID", "CURRENCY",
                       "GROSSAMOUNT", "NETAMOUNT", "TAXAMOUNT", "ITEMATPSTATUS",
                       "OPITEMPOS", "QUANTITY", "QUANTITYUNIT", "DELIVERYDATE"] -%}
{%- set src_eff = "EFFECTIVE_FROM" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
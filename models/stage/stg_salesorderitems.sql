{%- set yaml_metadata -%}
source_model: 'SalesOrderItems'
derived_columns:
  SALESORDER_KEY: 'SALESORDERID'
  RECORD_SOURCE: '!SalesOrderItems'
  EFFECTIVE_FROM: 'DELIVERYDATE'
  LOAD_DATE: CURRENT_DATE()
hashed_columns:
  SALESORDER_PK:
    - 'SALESORDERID'
  PRODUCT_PK: 'PRODUCTID'
  LINK_PRODUCT_SALESORDER_PK:
    - 'SALESORDERID'
    - 'PRODUCTID'
  SALESORDER_HASHDIFF:
    is_hashdiff: true
    columns:
      - 'SALESORDERID'
      - 'SALESORDERITEM'
      - 'PRODUCTID'
      - 'CURRENCY'
      - 'GROSSAMOUNT'
      - 'NETAMOUNT'
      - 'TAXAMOUNT'
      - 'ITEMATPSTATUS'
      - 'OPITEMPOS'
      - 'QUANTITY'
      - 'QUANTITYUNIT'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}

{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns,
                  ranked_columns=none) }}
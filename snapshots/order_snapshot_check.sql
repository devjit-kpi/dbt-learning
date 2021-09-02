{% snapshot orders_snapshot_check %}

    {{
        config(
          target_schema='northwind',
          strategy='check',
          unique_key='orderid',
          check_cols=['shippeddate'],
        )
    }}

    select * from {{ source('snow_dbt', 'orders') }}

{% endsnapshot %}
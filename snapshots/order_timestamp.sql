{% snapshot orders_snapshot_timestamp %}

    {{
        config(
          target_schema='northwind',
          strategy='timestamp',
          unique_key='orderid',
          updated_at='shippeddate',
        )
    }}

    select * from {{ source('snow_dbt', 'orders') }}

{% endsnapshot %}
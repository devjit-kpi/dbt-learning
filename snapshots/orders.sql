{% snapshot orders_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='northwind',
      unique_key='orderid',

      strategy='timestamp',
      updated_at='shippeddate',
    )
}}

select * from {{ source('snow_dbt', 'orders') }}

{% endsnapshot %}
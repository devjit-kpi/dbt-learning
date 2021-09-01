{{ config(
materialized='table'
) }}

with stg_prod as
 (select * from dbt.northwind.products)
 select * from stg_prod
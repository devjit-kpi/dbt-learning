{{ config(
materialized='table'
) }}

with stg_suppliers as
 (select * from dbt.northwind.suppliers)
 select * from stg_suppliers
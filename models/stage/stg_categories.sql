{{ config(
materialized='table'
) }}

with stg_categories as
 (select * from dbt.northwind.categories)
 select * from stg_categories
{{ config(
materialized='table'
) }}

with stg_prod as
 (select *,
 {{tot_stock_prc('unitsinstock','unitprice')}} total_prc
 from dbt.northwind.products)
 select * from stg_prod
{% macro active_prod()%}

select productid from stg_prod
where discontinued<>1

{% endmacro %}

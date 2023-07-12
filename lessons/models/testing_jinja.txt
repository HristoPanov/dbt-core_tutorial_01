{# this is a comment which will not appear in the compiled sql #}
{#  test 01
	test 02
	test 03
 -#}

 --comments here will appear
{#
{%- set my_long_variable %}
	select 1 as my_col
{%- endset %}

{%- set my_list = ['user_id', 'created_at'] %}

SELECT
{%-for item in my_list %}
	{{item}}{% if not loop.last %},{%endif%}
{%- endfor %}
-#}


{# get all columns in a table, check if they start with 'total'#}
{% set columns = adapter.get_columns_in_relation(ref('dim_orders'))%}

SELECT
{%-for column in columns %}
	{%-if column.name.startswith('total')%}
	{{column.name.lower()}}
	{%- endif -%}
{%- endfor %}

{# get all values from a column in a table#}
{% set values = dbt_utils.get_column_values(ref('dim_orders'),'order_status') %}
{{values}}






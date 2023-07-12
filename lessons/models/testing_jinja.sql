{# this is a comment which will not appear in the compiled sql #}
{#  test 01
	test 02
	test 03
 -#}

 --comments here will appear
{%- set my_long_variable %}
	select 1 as my_col
{%- endset %}

{%- set my_list = ['user_id', 'created_at'] %}

SELECT
{%-for item in my_list %}
	{{item}}{% if not loop.last %},{%endif%}
{%- endfor %}


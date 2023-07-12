{%- macro is_weekend2(date_column) -%}
	EXTRACT(DAYOFWEEK FROM DATE({{ date_column }})) in (1,7)
{%- endmacro -%}
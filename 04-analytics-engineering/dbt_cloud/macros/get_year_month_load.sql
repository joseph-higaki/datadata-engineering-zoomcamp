{#
    THis macro
#}
{% macro get_year_month_load(trip_type) -%}
    {% if trip_type == 'yellow' or trip_type == 'green' %}
        {% set year_month_load = ['2019_01','2019_02','2019_03','2019_04','2019_05','2019_06','2019_07','2019_08','2019_09','2019_10','2019_11','2019_12','2020_01','2020_02','2020_03','2020_04','2020_05','2020_06','2020_07','2020_08','2020_09','2020_10','2020_11','2020_12']%}
    {% else %}
        {% if trip_type == 'fhv' %}
            {% set year_month_load = ['2019_01','2019_02','2019_03','2019_04','2019_05','2019_06','2019_07','2019_08','2019_09','2019_10','2019_11','2019_12']%}
        {% endif %}
    {% endif %}
    {{ return (year_month_load) }}  
{%- endmacro %}
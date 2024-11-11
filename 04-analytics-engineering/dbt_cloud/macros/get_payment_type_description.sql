{#
    THis macro
#}
{% macro get_payment_type_description(payment_type) -%}

    case
        cast( {{ payment_type }} as integer)
        when 1
        then 'Credit Card'
        when 2
        then 'Cash'
        else 'Not Implemented Yet'
    end

{%- endmacro %}

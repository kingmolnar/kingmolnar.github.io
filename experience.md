---
layout: page
title: Experience
permalink: /experience/
---
{% assign cat_list = site.data.categories | sort: "sort_order" %}
<div>
  Jump to a category:<br />
  {% for cat in cat_list %}
    &nbsp;<a href="#{{ cat.label }}">{{ cat.title }}</a>&nbsp;
  {% endfor %}
</div>
{% for cat in cat_list %}
  <a name="{{ cat.label }}">
  <h6>{{ cat.title }}</h6>
  {%- include experience-category.md item = cat.label -%}
{% endfor %}

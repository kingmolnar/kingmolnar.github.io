---
layout: page
title: Experience
permalink: /experience/
---
{% assign cat_list = site.data.categories | sort: "sort_order" %}
<!-- <div class="category-nav-bar">
  <table><tr>
  {% for cat in cat_list %}
    <td><a href="#{{ cat.label }}">{{ cat.title }}</a></td>
  {% endfor %}
  </tr></table>
</div> -->
{% for cat in cat_list %}
  <a name="{{ cat.label }}">
  <!-- <div class="category-side-flag"><p>{{ cat.title }}</p></div> -->
  {%- include experience-category.md item = cat -%}
{% endfor %}

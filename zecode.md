---
layout: page
title: Code
permalink: /code/
---
Browse my repositories on GitHub at <https://github.com/kingmolnar/>{:rel="noopener noreferrer"}

<div>
{% assign projects = site.projects | sort: "sort_order" %}
{% for prj in projects %}
  {% assign num_tags = prj.tags | size %}
  <h3>
    <a href="{{ prj.url }}">{{ prj.title }}</a>
  </h3>
  <p>
    {% if num_tags > 0 %}
      <i>{{ prj.tags | array_to_sentence_string }}</i>
    {%- endif -%}
    {{ prj.excerpt }}
  </p>
{% endfor %}
</div>

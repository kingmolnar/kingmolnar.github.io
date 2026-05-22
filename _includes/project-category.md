{% assign category = include.item %}
## {{category.title}}
{{category.description}}

{% assign projects_list = site.projects | sort: "sort_order" %}
{% assign filtered_list = projects_list | where: "category", category.label %}
<ul>
{% for project in filtered_list %}
  {% assign num_tags = project.tags | size %}
  <li>
    <h4 class="experience-list-item-header"><a href="{{ project.url }}">{{ project.title }}</a></h4>
    <p>
      {% if num_tags > 0 %}
        <div class="tag-list">{{ project.tags | array_to_sentence_string }}</div>
      {%- endif -%}
      {% if project.summary %}{{ project.summary }}{% else %}{{ project.excerpt }}{% endif %}
    </p>
  </li>
{% endfor %}
</ul>

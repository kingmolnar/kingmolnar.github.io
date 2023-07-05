{% assign category = include.item %}
## {{category.title}}
{{category.description}}

{% assign exps_list = site.topics | sort: "sort_order" %}
{% assign filtered_list = exps_list | where: "category", category.label %}
<ul>
{% for post in filtered_list %}
  {% assign num_tags = post.tags | size %}
  <li>
    <h4 class="experience-list-item-header"><a href="{{ post.url }}">{{ post.title }}</a></h4>
    <p>
      {% if num_tags > 0 %}
        <div class="tag-list">{{ post.tags | array_to_sentence_string }}</div>
      {%- endif -%}
      {{ post.excerpt }}
    </p>
  </li>
{% endfor %}
</ul>


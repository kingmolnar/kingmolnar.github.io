<div>
{% assign exps_list = site.topics | sort: "sort_order" %}
{% assign filtered_list = exps_list | where: "category", include.item %}
{% for post in filtered_list %}
  {% assign num_tags = post.tags | size %}
  <h3>
    <a href="{{ post.url }}">{{ post.title }}</a>
  </h3>
  <p>
    {% if num_tags > 0 %}
      <i>{{ post.tags | array_to_sentence_string }}</i>
    {%- endif -%}
    {{ post.excerpt }}
  </p>
{% endfor %}
</div>

---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: base
---
Hello World

<div>
{% assign cat_list = site.data.categories | sort: "sort_order" %}
{% for cat in cat_list %}
    <div style="background-image: url(/assets/default.jpg)">
        <h3><a href="/experience/#{{ cat.label }}">{{ cat.title }}</a></h3>
        <p>{{ cat.description }}</p>
    <div>
{% endfor %}
</div>


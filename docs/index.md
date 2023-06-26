---
---

Welcome to My Home Page

{% assign date = '2020-04-13T10:20:00Z' %}

- Original date - {{ date }}
- With timeago filter - {{ date | timeago }}

<ul>
  {% for topic in site.topics %}
    <li>
      <a href="{{ topic.url }}">{{ topic.title }}</a>
    </li>
  {% endfor %}
</ul>
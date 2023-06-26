---
---

# Welcome to Molnar.AI

{% assign date = '2020-04-13T10:20:00Z' %}

- Original date - {{ date }}
- With timeago filter - {{ date | timeago }}

## Topics

<ul>
  {% for topic in site.topics %}
    <li>
      <a href="{{ topic.url }}">{{ topic.title }}</a>
    </li>
  {% endfor %}
</ul>
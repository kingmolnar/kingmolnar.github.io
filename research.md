---
layout: page
title: Research
permalink: /research/
---
Follow me on ResearchGate at <https://www.researchgate.net/profile/Peter-Molnar-5>{:rel="noopener noreferrer"}

{% assign publications = site.data.publications | sort: "Year" | reverse %}

## Monographs
{% assign monographs = publications | where: "Type", "monograph" %}
<ul class="publication-list">
{% for pub in monographs %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>

## Book Chapters
{% assign chapters = publications | where: "Type", "chapter" %}
<ul class="publication-list">
{% for pub in chapters %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>

## Articles
{% assign papers = publications | where: "Type", "article" %}
<ul class="publication-list">
{% for pub in papers %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>
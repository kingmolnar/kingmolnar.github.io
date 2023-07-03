---
layout: page
title: Research
permalink: /research/
---
Follow me on ResearchGate at <https://www.researchgate.net/profile/Peter-Molnar-5>{:rel="noopener noreferrer"}

{% assign publications = site.data.publications.records %}
{% assign article_list = publications | where: "type", "article" %}
{% assign book_list = publications | where: "type", "book" %}
{% assign inbook_list = publications | where: "type", "inbook" %}
{% assign incollection_list = publications | where: "type", "incollection" %}
{% assign inproceedings_list = publications | where: "type", "inproceedings" %}
{% assign misc_list = publications | where: "type", "misc" %}
{% assign techreport_list = publications | where: "type", "techreport" %}

{% assign monographs = book_list | concat: techreport_list | sort: "year" | reverse %}
{% assign chapters =  inbook_list | sort: "year" | reverse %}
{% assign papers = article_list | concat: inproceedings_list | concat: incollection_list | concat: misc_list | sort: "year" | reverse %}

## Monographs
<ul class="publication-list">
{% for pub in monographs %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>

## Book Chapters
<ul class="publication-list">
{% for pub in chapters %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>

## Articles
<ul class="publication-list">
{% for pub in papers %}
    {% include research-publication.md item = pub %}
{% endfor %}
</ul>

<div class="left-line">Download BibTeX file: <a href="/assets/publications.bib"><code>publications.bib</code></a>
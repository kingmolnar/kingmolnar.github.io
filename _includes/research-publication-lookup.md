{% assign pub_id = include.item %}
{% assign publications = site.data.publications.records %}
{% assign selection = publications | where: "id", pub_id %}
{% for pub in selection %}
    {% include research-publication.md item = pub %}
{% endfor %}
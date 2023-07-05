{% assign pub = include.item %} 
<li>
    {{ pub.author | map: "name" | array_to_sentence_string: "&amp;" }} ({{ pub.year }}).
    {% case pub.type %}
        {% when "article" %}
            {{ pub.title }}.
            {% if pub.journal %}<i>{{ pub.journal.name }}</i>{% if pub.journal.volume %}, <b>{{pub.journal.volume}}</b>{% endif %}{% if pub.journal.issue %}{{pub.journal.issue}}{% endif %}{%if pub.journal.pages %}, {{pub.journal.pages}}{% endif %}.{% endif %}
            {% if pub.publisher %}{{ pub.publisher.name }}.{% endif %}

        {% when "book" %}
            {{ pub.title }}.
            {{ pub.publisher.name }}.
            {% if pub.isbn %}ISBN: {{pub.isbn}}{% endif %}

        {% when "inbook" %}
            {% if pub.chapter.size > 0 %}{{ pub.chapter}}, {% endif %}
            in: 
            {% if pub.editor %}{{ pub.editor | map: "name" | map: "name" | array_to_sentence_string: "&amp;" }} (eds.){% endif %}
            <i>{{ pub.title }}</i>.
            {% if pub.publisher %}{{ pub.publisher.name }}.{% endif %}

        {% when "incollection" %}
            {{ pub.title }}
            in:
            {% if pub.editor %}{{ pub.editor | map: "name" | map: "name" | array_to_sentence_string: "&amp;" }} (eds.){% endif %}
            <i>{{ pub.booktitle }}</i>{% if pub.publisher %}, {{ pub.publisher.name }}{% endif %}{%if pub.pages %}, {{pub.pages}}{% endif %}.


        {% when "inproceedings" %}
            {{ pub.title }}.
            {% if pub.booktitle %}<i>{{ pub.booktitle }}</i>{% endif %}{% if pub.organization %}, <i>{{ pub.organization }}</i>{% endif %}{% if pub.volume %}, <b>{{pub.volume}}</b>{% endif %}{% if pub.issue %}({{pub.issue}}){% endif %}{%if pub.pages %}, {{pub.pages}}{% endif %}.
 
        {% when "misc" %}
            {{ pub.title }}.
            {{ pub.publisher.name }}. [{{pub.type}}]

        {% when "techreport" %}
            {{ pub.title }}.
            <i>{{ pub.publisher.name }}</i>. [{{pub.type}}]

        {% else %}
            {{ pub.title }}. [Unknown type: {{ pub.type }}]
    {% endcase %}
    {% if pub.doi %}<a href="">doi:{{pub.doi}}</a>{% elsif pub.url %}<a href="">{{pub.url}}</a>{% endif %}
</li>
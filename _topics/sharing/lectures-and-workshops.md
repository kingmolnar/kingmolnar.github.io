---
layout: experience
title:  Lectures and Workshops
sort_order: 100
category: sharing 
tags:
    - Education
summary: >-
    List of lectures and workshops
---
<!--more-->

{% assign lectures = site.data.lectures | sort: "course" %}
{% assign n_lecture = lectures | size %}
{% if n_lecture > 0 %}
## Lectures

| Course Number | Title | Level | Institution |
|---------------|-------|-------|-------------|
{% for crs in lectures %}|{{ crs.course }}|{{ crs.title }}|{{ crs.level }}|{{ crs.institution }}|
{% endfor %}
{% endif %}

{% assign workshops = site.data.workshops %}
{% assign n_workshop = workshops | size %}
{% if n_workshop > 0 %}
## Workshops

| Title | Venue | Audience |
|-------|----------|----------|
{% for crs in workshops %}|{{ crs.title }}|{{ crs.venue }}|{{ crs.audience }}|
{% endfor %}
{% endif %}
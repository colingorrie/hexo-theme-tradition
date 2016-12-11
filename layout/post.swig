{% extends 'includes/layout.swig' %}

{% block header %}
  <header class="Post__header">
    <h1 class="Post__title">{{ page.title }}</h1>
    <p class="Post__author">{{ page.author }}</p>
    <p class="Post__date">
      <time datetime="{{ date_xml(page.date) }}">
        {{ date(page.date) }}
      </time>
    </p>
  </header>
{% endblock %}

{% block body %}
  {% include 'includes/categories.swig' %}
  {% autoescape false %}{{ page.content }}{% endautoescape %}
  {% include 'includes/tags.swig' %}
  {% include 'includes/pagination.swig' %}
  {% include 'includes/comments.swig' %}
{% endblock %}

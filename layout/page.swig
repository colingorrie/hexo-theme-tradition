{% extends 'includes/layout.swig' %}

{% block header %}
  <header class="Page__header">
    <h1 class="Page__title">{{ page.title }}</h1>
  </header>
{% endblock %}

{% block body %}
  {% autoescape false %}{{ page.content }}{% endautoescape %}
  {% include 'includes/pagination.swig' %}
{% endblock %}

{% extends 'includes/layout.swig' %}

{% block header %}
  <header class="Index__header">
    <h1 class="Index__title">{{ config.title }}</h1>
  </header>
{% endblock %}

{% block body %}
  {% include 'includes/recent-posts.swig' %}
{% endblock %}

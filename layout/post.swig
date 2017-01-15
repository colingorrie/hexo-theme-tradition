{% extends 'includes/layout.swig' %}

{% block header %}
  <header class="Post__header"
          style="{% if page.image %}
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url({{ page.image }});
            background-position: center center;
            background-size: cover;
          {% endif %}">
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
  <div class="markdown-content">
  {% autoescape false %}{{ page.content }}{% endautoescape %}
  </div>
  {% include 'includes/tags.swig' %}
  {% include 'includes/pagination.swig' %}
  {% include 'includes/comments.swig' %}
{% endblock %}

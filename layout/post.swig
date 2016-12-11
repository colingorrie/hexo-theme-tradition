{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="post" class="Post">
    <header class="Post__header">
      <h1 class="Post__title">{{ page.title }}</h1>
      <p class="Post__author">{{ page.author }}</p>
      <p class="Post__date">
        <time datetime="{{ date_xml(page.date) }}">
          {{ date(page.date) }}
        </time>
      </p>
    </header>
    <div class="Post__body">
      <div class="Post__content">
        {% include 'includes/categories.swig' %}
        {% autoescape false %}{{ page.content }}{% endautoescape %}
        {% include 'includes/tags.swig' %}
        {% include 'includes/pagination.swig' %}
      </div>
      {% include 'includes/sidebar.swig' %}
    </div>
  </article>


{% endblock %}

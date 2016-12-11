{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="page" class="Page">
    <header class="Page__header">
      <h1 class="Page__title">{{ page.title }}</h1>
    </header>
    <div class="Page__body">
      <div class="Page__content">
        {% autoescape false %}{{ page.content }}{% endautoescape %}
      </div>
      {% include 'includes/sidebar.swig' %}
    </div>
  </article>

  {% include 'includes/pagination.swig' %}
{% endblock %}

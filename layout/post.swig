{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="post" class="Post">
    <div class="Post__header">
      <h1 class="Post__title">{{ page.title }}</h1>
    </div>
    {% autoescape false %}{{ page.content }}{% endautoescape %}
  </article>

  {% include 'includes/tags.swig' %}

  {% include 'includes/pagination.swig' %}
{% endblock %}

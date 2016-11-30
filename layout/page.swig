{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="page" class="Page">
    <div class="Page__header">
      <h1 class="Page__title">{{ page.title }}</h1>
    </div>
    {% autoescape false %}{{ page.content }}{% endautoescape %}
  </article>

  {% include 'includes/pagination.swig' %}
{% endblock %}

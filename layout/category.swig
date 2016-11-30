{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="category" class="Category">
    <div class="Category__header">
      <h1 class="Category__title">{{ page.category }}</h1>
    </div>
    {% for postItem in page.posts.toArray() %}
      <div class="category-item">
        {% if postItem.link %}
          <a href="{{ url_for(postItem.link) }}" target="_blank">
            {{ postItem.title || 'No Title' }}
          </a>
        {% else %}
          <a href="{{ url_for(postItem.path) }}">
            {{ postItem.title || 'No Title' }}
          </a>
        {% endif %}

        <time datetime="{{ date_xml(postItem.date) }}">
          {{ date(postItem.date) }}
        </time>
      </div>
    {% endfor %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}

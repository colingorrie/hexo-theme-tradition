{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag" class="Tag">
    <div class="Tag__header">
      <h1 class="Tag__title">{{ page.tag }}</h1>
    </div>
    {% for postItem in page.posts.toArray() %}
      <div class="tag-item">
        {% if postItem.link %}
          <a href="{{ url_for(postItem.link) }}" target="_blank">
            {{ postItem.title || 'No Title' }}
          </a>
        {% else %}
          <a href="{{ url_for(postItem.link) }}">
            {{ postItem.title || 'No Title' }}
          </a>
        {% endif %}
        <time datetime="{{ date_xml(postItem.date) }}">
          {{ date(postItem.date) }}
        </time>
      </div>
    {% endfor %}
    {% include 'includes/pagination.swig' %}
  </div>

{% endblock %}

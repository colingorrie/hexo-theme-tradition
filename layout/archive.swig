{% extends 'includes/layout.swig' %}

{% block header %}
  {% if !is_year() %}
    <header class="Archive__header">
      <h1 class="Archive__title">Archives</h1>
    </header>
  {% else %}
    <header class="Archive__header">
      <h1 class="Archive__title">{{ date( page.month, 'MMMM') }} {{ page.year }}</h1>
    </header>
  {% endif %}
{% endblock %}

{% block body %}
  {% set categoriesList = list_categories({ show_count: false }) %}
  {% set tagsList = list_tags({ show_count: false }) %}
  {% set archivesList = list_archives({ show_count: false }) %}

  {% if !is_year() %}
    {% if theme.atom %}
      <p>
        The feed is available via
        <a href="{{ theme.atom }}">atom</a>.
      </p>
      <br>
    {% endif %}
    {% if config.atom %}
      <p>
        The feed is available via
        <a href="{{ config.atom }}">atom</a>.
      </p>
      <br>
    {% endif %}
    <div class="Archive__type">
      <h2 class="Archive__typeTitle">Categories</h2>
      {% if categoriesList %}
        {% autoescape false %}{{ categoriesList }}{% endautoescape %}
      {% else %}
        <p>None.</p>
      {% endif %}
    </div>
    <div class="Archive__type">
      <h2 class="Archive__typeTitle">Tags</h2>
      {% if tagsList %}
        {% autoescape false %}{{ tagsList }}{% endautoescape %}
      {% else %}
        <p>None.</p>
      {% endif %}
    </div>
    <div class="Archive__type">
      <h2 class="Archive__typeTitle">Archives</h2>
      {% if archivesList %}
        {% autoescape false %}{{ archivesList }}{% endautoescape %}
      {% else %}
        <p>None.</p>
      {% endif %}
    </div>
    {% include 'includes/pagination.swig' %}
  {% else %}
    {% for postItem in page.posts.toArray() %}
      <article class="PostExcerpt">
        <header class="PostExcerpt__header">
          <a href="{{ config.root }}{{ postItem.path }}" class="PostExcerpt__title">{{ postItem.title }}</a>
        </header>
        <div class="PostExcerpt__meta">
          {% if postItem.date %}
            <time datetime="{{ postItem.date.toJSON() }}" class="PostExcerpt__date">
              {{ date(postItem.date) }}
            </time>
          {% endif %}
          {% if postItem.author %}
            <span class="PostExcerpt__author">
              by {{postItem.author}}
            </span>
          {% endif %}
        </div>
        {% if postItem.excerpt %}
          <div class="PostExcerpt__excerpt">
            {{ postItem.excerpt }} <a href="{{ config.root }}{{ postItem.path }}" class="PostExcerpt__readMore">Continue Reading</a> »
          </div>
        {% endif %}
      </article>
    {% endfor %}
    {% include 'includes/pagination.swig' %}
  {% endif %}
{% endblock %}

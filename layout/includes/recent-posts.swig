{% if site.posts.length > 0 %}
  <header class="RecentPosts__header">
    <h2 class="RecentPosts__title">Recent Posts</h1>
  </header>

  {% for postItem in site.posts.toArray() %}
    <article class="recent-post-item PostExcerpt">
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
  {% include 'pagination.swig' %}
{% endif %}

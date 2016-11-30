{% if page.tags and page.tags.length %}
  <div class="Tags">
    <span class="Tags__title">Topics:</span>
    <ul class="Tags__list">
      {% for tag in page.tags %}
        <li><a href="{{ config.root }}{{ tag.path }}">{{ tag.name }}</a></li>
      {% endfor %}
    </ul>
  </div>
{% endif %}

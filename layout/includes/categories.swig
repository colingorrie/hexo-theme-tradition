{% if page.categories and page.categories.length %}
  <div class="Categories">
    <ul class="Categories__list">
      {% for category in page.categories %}
        <li><a href="{{ config.root }}{{ category.path }}">{{ category.name }}</a></li>
      {% endfor %}
    </ul>
  </div>
{% endif %}

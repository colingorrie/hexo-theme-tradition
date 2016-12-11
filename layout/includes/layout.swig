
{% set pageTitle = page.title || config.subtitle || '' %}

{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
{% endif %}

{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
{% endif %}

{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
{% endif %}

{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}

{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}

{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}

<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1.0">
  <title>{{ pageTitle }}</title>
  {% include "opengraph.swig" %}
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
</head>
<body>

<div class="pure-g">
  {% include "menu.swig" %}
</div>

<div class="pure-g">
  <div id="content-outer" class="pure-u-1 pure-u-md-3-4 Main">
    <div id="content-inner" class="">
      {# {% autoescape false %}{{ body }}{% endautoescape %} #}
      {% block body %}{% endblock %}
    </div>
  </div>

  <div id="bottom-outer" class="pure-u-1">
    <div id="bottom-inner" class="Footer">
      Site by {{ config.author }} using
      <a href="http://hexo.io">hexo blog framework</a>.
      <br>
      <a href="{{ config.root }}">Home</a>
    </div>
  </div>

</div>

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

</body>
</html>

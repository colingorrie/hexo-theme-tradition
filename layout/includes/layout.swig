
{% set pageTitle = page.title || config.subtitle || '' %}

{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
  {% set className = "Archive" %}
{% endif %}

{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
  {% set className = "Tag" %}
{% endif %}

{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
  {% set className = "Category" %}
{% endif %}

{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
  {% set className = "Archive" %}
{% endif %}

{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
  {% set className = "Archive" %}
{% endif %}

{% if is_post() %}
  {% set className = "Post" %}
{% endif %}

{% if is_page() %}
  {% set className = "Page" %}
{% endif %}

{% if is_home() %}
  {% set className = "Index" %}
{% endif %}

{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}

<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1.0">
  <meta name="google-site-verification" content="SOOHSO4IRtvQ7XkQBzsO65xpbhnGpaoFHPBcm4EGyds" />
  <title>{{ pageTitle }}</title>
  {% include "opengraph.swig" %}
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
  {% include "google_analytics.swig" %}
</head>
<body>

<div class="pure-g">
  {% include "menu.swig" %}
</div>

<div class="pure-g">
  <div class="pure-u-1 pure-u-md-3-4 Main">
    <div class="{{ className }}">
      {% block header %}{% endblock %}
      <div class="{{ className }}__body">
        <div class="{{ className }}__content">
          {% block body %}{% endblock %}
        </div>
        {% include 'sidebar.swig' %}
      </div>
    </div>
  </div>

  <div id="bottom-outer" class="pure-u-1 Footer">
    &copy; 2016 {{ config.author }} 
  </div>
</div>

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

{% if theme.disqus_shortname && page.is_post() %}
  <script type="text/javascript">
    var disqus_shortname = '{{ theme.disqus_shortname }}';

    (function(){
      var dsq = document.createElement('script');
      dsq.type = 'text/javascript';
      dsq.async = true;
      dsq.src = '//' + disqus_shortname + '.disqus.com/{% if page.comments %}embed.js{% else %}count.js{% endif %}';
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    }());
  </script>
{% endif %}

</body>
</html>

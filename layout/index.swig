{% extends 'includes/layout.swig' %}

{% block header %}
  <header class="RecentPosts__header">
    <h1 class="RecentPosts__title">Blog</h1>
  </header>
{% endblock %}

{% block body %}
  {% include 'includes/recent-posts.swig' %}
{% endblock %}

<div class="Profile">
  <h2 class="Profile__title">About the author</h2>
  <img class="Profile__image" src="{{ theme.profile.image }}" alt="{{ config.author }}">
  <p class="Profile__name">{{ config.author }}</p>
  <p class="Profile__description">{{ theme.profile.description }}</p>
  {% if theme.profile.social %}
  <ul class="Profile__socialLinks">
    <li><a href="https://twitter.com/{{ theme.profile.social.twitter }}" target="_blank"><i class="fa fa-twitter"></i></a></li>
  </ul>
  {% endif %}
</div>

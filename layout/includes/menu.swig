<div class="pure-u Menu">
  <div class="pure-menu pure-menu-horizontal pure-hidden-xs pure-hidden-sm">
    <ul class="pure-menu-list">
      {% for key in Object.keys(theme.menu) %}
        <li class="pure-menu-item"><a class="pure-menu-link" href="{{ theme.menu[key] }}">{{ key }}</a></li>
      {% endfor %}
    </ul>
  </div>
  <div class="pure-menu pure-hidden-md pure-hidden-lg pure-hidden-xl">
    <ul class="pure-menu-list">
      {% for key in Object.keys(theme.menu) %}
        <li class="pure-menu-item"><a class="pure-menu-link" href="{{ theme.menu[key] }}">{{ key }}</a></li>
      {% endfor %}
    </ul>
  </div>
</div>

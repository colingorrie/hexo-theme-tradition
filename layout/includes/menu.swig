<div class="pure-u Menu Menu--horizontal pure-hidden-xs pure-hidden-sm">
  <div class="pure-menu pure-menu-horizontal">
    <ul class="pure-menu-list">
      {% for key in Object.keys(theme.menu) %}
        <li class="pure-menu-item"><a class="pure-menu-link" href="{{ theme.menu[key] }}">{{ key }}</a></li>
      {% endfor %}
    </ul>
  </div>
</div>
<div class="pure-u Menu Menu--vertical pure-hidden-md pure-hidden-lg pure-hidden-xl">
  <div class="pure-menu">
    <div class="pure-menu-link" id="toggle">MENU</div>
    <ul class="pure-menu-list hidden" id="vertical-menu">
      {% for key in Object.keys(theme.menu) %}
        <li class="pure-menu-item"><a class="pure-menu-link" href="{{ theme.menu[key] }}">{{ key }}</a></li>
      {% endfor %}
    </ul>
  </div>
</div>

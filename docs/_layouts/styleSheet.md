---
layout: default
---

<div class='well metrics'>
  <ul class="nav nav-tabs">
    {% for i in site.data.sprints %}
      {% if i.styleSheet %}
        <li class='{{i.class}}'><a data-toggle="tab" class='{{i.class}}' href="#sprint-{{i.number}}">Sprint {{i.number}}</a></li>
      {% endif %}
    {% endfor %}
  </ul>

  <div class="tab-content">
    {% for i in site.data.sprints %}
      {% if i.styleSheet %}
        <div id="sprint-{{i.number}}" class="tab-pane fade {{i.class}}">
                <img src='{{site.baseurl}}/static/img/styleSheet/sprint_{{i.number}}.png' title='Folha de Estilo - Sprint {{i.number}}' alt='Folha de Estilo - Sprint {{i.number}}'>
        </div>
      {% endif %}
    {% endfor %}
  </div>

  <hr>

  <div class="card-deck">
    {% for i in site.data.sprints %}
      {% if i.styleSheet %}
        <div class="card bg-primary">
          <div class="card-body text-center">
              <p>Sprint {{i.number}}</p>
              <img src='{{site.baseurl}}/static/img/styleSheet/sprint_{{i.number}}.png' title='Folha de Estilo - Sprint {{i.number}}' alt='Folha de Estilo - Sprint {{i.number}}'>
          </div>
        </div>
      {% endif %}
    {% endfor %}
  </div>
</div>

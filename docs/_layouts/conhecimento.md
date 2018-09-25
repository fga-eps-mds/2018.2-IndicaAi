---
layout: default
---

<div class='well metrics'>
  <ul class="nav nav-tabs">
    {% for i in site.data.sprints %}
    <li class='{{i.class}}'><a data-toggle="tab" class='{{i.class}}' href="#sprint-{{i.number}}">Sprint {{i.number}}</a></li>
    {% endfor %}
  </ul>

  <div class="tab-content">
    {% for i in site.data.sprints %}
      <div id="sprint-{{i.number}}" class="tab-pane fade {{i.class}}">
              <img src='{{site.baseurl}}/static/img/grafico_de_conhecimentos/sprint_{{i.number}}.png' title='Gráfico de Conhecimentos - Sprint {{i.number}}' alt='Gráfico de Conhecimentos - Sprint {{i.number}}'>
      </div>
    {% endfor %}
  </div>

  <hr>

  <div class="card-deck">
    {% for i in site.data.sprints %}
      <div class="card bg-primary">
        <div class="card-body text-center">
            <p>Sprint {{i.number}}</p>
            <img src='{{site.baseurl}}/static/img/grafico_de_conhecimentos/sprint_{{i.number}}.png' title='Gráfico de Conhecimentos - Sprint {{i.number}}' alt='Gráfico de Conhecimentos - Sprint {{i.number}}'>
          </div>
        </div>
    {% endfor %}
  </div>
</div>

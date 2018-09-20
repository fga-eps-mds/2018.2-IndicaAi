---
layout: default
---

<div class='well risks'>

      <div class='risk-geral'>
        <img src='{{site.baseurl}}/static/img/risks/geral.png' title='Burndown de Riscos' alt='Burndown de Riscos'>
      </div>

  <hr>

  <div class="card-deck">
    {% for i in site.data.risks %}
      <div class="card bg-primary">
        <div class="card-body text-center">
            <img src='{{site.baseurl}}/static/img/risks/risco_{{i.number}}.png' title='Burndown de Risco- {{i.name}}' alt='Burndown de Risco- {{i.name}}'>
          </div>
        </div>
    {% endfor %}
  </div>
</div>

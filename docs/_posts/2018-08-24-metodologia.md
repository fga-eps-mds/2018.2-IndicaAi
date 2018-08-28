---
layout: post
title:  "Metodologia"
date:   2018-08-24 13:50:39
categories: docs
---

A metodologia aplicada netes projeto será uma metodologia híbrida baseada nos _frameworks_ Scrum, Extreme Programming e Kanban. Abaixo segue a descrição de quais técnicas serão aplicadas e como cada uma deve ser seguida.

---

## Papéis

### Scrum Master
São responsabilidades deste papel:
* Garantir a dissiminação do conteúdo por meio da aplicação de técnicas que constam nesse plano de metodologia. Ex.: Pareamento;
* Remover obstáculos do desenvolvimento e minimizar os riscos do projeto;
* Definir, monitoriar e melhorar a produtividade por meio de métricas coletadas sobre o projeto;
* Garantir a execução da metodologia conforme está definido neste plano.

### Product Owner
São responsabilidades deste papel:
* Levantar os pontos importantes que mais agregam valor ao produto do ponto de vista dos _stakeholders_;
* Definir os critérios de aceitação para uma _issue_;
* Garantir a boa usuabilidade do que está sendo implementado.

### DevOps
São responsabilidades deste papel:
* Verificar e aceitar os _pull requests_ de acordo com os critérios definidos pelo Scrum Master e o PO;
* Garantir o disponibilidade dos ambientes de desenvolvimento, homologação e produção;
* Configurar integração e deploy contínuo;
* Registrar o _gitflow_.

### Arquiteto
São responsabilidades deste papel:
* Organizar e modelar a arquitetura do sistema;
* Acompanhar o processo de desenvolvimento para garantir que a arquitetura está sendo seguida.

### Desenvolvedor
São responsabilidades deste papel:
* Desenvolver a história;
* Testar sempre as soluções. visando mantes no mínimo 90% da corbetura do código;
* Seguir os padrões e técnicas de programação adotados pelo Scrum Master.

---

## Rituais
### Sprints
* Duração de 7 dias
* Todas as sprints se iniciaram na quarta-feria e terão seu término na terça-feira da semana seguinte.
  * Sprints que antencedem as _releases_ poderão ser: encurtadas para sprints de 4 dias ou emendadas com a sprint anterior, gerando sprints de 11 dias. Será responsabilidade do Scrum Master, avaliar previamente, conforme andamento da equipe, qual a melhor opção será aplicada.

### Daily Meeting
* Duração Máxima: 15 minutos
* Realizadas diariamente às 15:45h
* A ausência destas reuniões deverá ser previamente comunicada pelo membro da equipe e justificada. Sendo obrigação do mesmo informar o andamento das duas atividades neste dia pelos meios de comunicações definidos pela equipe.

### Sprint Review
* Duração Máxima: 1 hora
* Ocorrerão toda terça-feira, tendo início as 18h

### Sprint Restropective
* Duração Máxima: 45 minutos
* Ocorrerão toda terça-feira, tendo início as 19h

### Sprint Planning
* Duração Máxima: 2 horas
* Ocorrerão toda terça-feira, tendo início as 20h

---

## Técnicas de Planejamento

### Issues
* As _issues_ serão aplicadas para representar os mais diversos tipos de tarefas que o projeto demandar.
* Devem ser classificadas por meio das **_labels_**. Sendo algumas _labels_ básicas para o projeto:
  * <span style='background-color:#71bfce;color:#000'>documentation</span>
  * <span style='background-color:#fcc27b;color:#000'>software architecture</span>
  * <span style='background-color:#0801ba;color:#fff'>DevOPs</span>
  * <span style='background-color:#0dc695;color:#000'>scrum master</span>
  * <span style='background-color:#827dce;color:#fff'>product owner</span>
  * <span style='background-color:#b71f24;color:#fff'>bug</span>
  * <span style='background-color:#f26aae;color:#fff'>new fetuare</span>
  * <span style='background-color:#a7d13c;color:#000'>metrics</span>
  * <span style='background-color:#006b75;color:#fff'>training</span>

  Outras _labels_ podem ser adicionadas ao projeto conforme a necessidade que for surgindo;
* Para termos de organização, as _issues_ serão classificadas como planejadas ou adicionadas em cada _sprint_:
    * **_Issues_ planejadas**: são aquelas previstas no durante o _Sprint Planning_ para desenvolver durante aquela _sprint_;
    * **_Issues_ adicionadas**: são aquelas que não foram previstas no _Sprint Planning_, mas foram desenvolvidas naquela _sprint_ devido a alguma justificativa identificada pelo _Scrum Master_.

### Milestones
* As _milestones_ serão aplicadas para identificar cada _sprint_. Entende-se que cada _sprint_ representa uma entrega significativa de novas funcionalidades, caracterizando-se assim como macros do projeto.
* Toda _issue_ planejada ou adicionada para ser executada durante aquela _sprint_ deve ser mapeada com a _milestone_ referente.

### Épicos
* Issues referentes a um mesmo módulo dentro do projeto devem estar associadas a épicos, como forma de mapear melhor o desenvolvimento daquele épico em específico.
* Épicos também podem ser usados para representar _issues_ muito grandes, com alto grau de dificuldade. Assim, quebra-se essas _issues_ complexas em _issues_ menores facilitando o desenvolvimento.

### User Stories
* Serão aplicadas na estimativa de tempo para planejamento da _sprint_;
* Deverão seguir o seguinte _template_:

  <blockquote><b>Eu como</b> [usuário do sistema] <b>desejo</b> [ação a ser executada] <b>para</b> [justificativa para a ação].</blockquote>

* Este _template_ deve estar mapeado em uma _Issue Template_; <!-- FIXME linkar o com template criado -->
* Cada _user story_ deve possuir um conjunto de critérios de aceitação definidos pelo PO, os quais deverão ser verificados antes de afirmar a tarefa como concluída.

### Technical Stories

* _Techinical Stories_ devem ser aplicadas quando surgir alguma demanda não funcional durante o andamento do projeto.
* Deverão seguir o mesmo _templete_ definido para as _user stories_.

### Planning Poker
* Deverá ser aplicado para estimar a dificuldade de trabalho do projeto e auxiliar no planejamento das _sprints_, conforme nota-se a capacidade de produção da equipe;
* Os pontos estimados para uma _issue_ devem estar registrados na mesma por meio do ZenHub;
* Os valores considerados deverão seguir a tabela abaixo: 0, 1, 2, 3, 5, 8, 13 e 21.

<table>
<tr><th>Pontuação</th><th>Duração</th><th>Risco</th><th>Máximo</th></tr>
<tr><td>0</td><td>15 minutos</td><td>15 minutos</td><td>30 minutos</td></tr>
<tr><td>1</td><td>1 hora</td><td>1 hora</td><td>2 horas</td></tr>
<tr><td>2</td><td>2 horas</td><td>1 hora</td><td>3 horas</td></tr>
<tr><td>3</td><td>4 horas</td><td>2 horas</td><td>6 horas</td></tr>
<tr><td>5</td><td>8 horas</td><td>2 horas</td><td>10 horas</td></tr>
<tr><td>8</td><td>12 horas</td><td>4 horas</td><td>16 horas</td></tr>
<tr><td>13</td><td>20 horas</td><td>6 horas</td><td>26 horas</td></tr>
<tr><td>21</td><td>30 horas</td><td>10 horas</td><td>40 horas</td></tr>
</table>

_Issues_ com mais de 8 pontos devem ser transformadas em Épicos e quebradas em _issues_ menores, para facilitar o desenvolvimento do projeto.

### Kanban
O Kanban será aplicado visando monitorar o fluxo de trabalho da equipe.

* O Kanban deverá contar com os quadros Product Backlog, Icebox, Sprint Backlog, Em progresso, Revisão e Terminados;
* É de responsabilidade de cada membro da equipe atualizar o Kanban diariamente com o _status_ de cada atividade;
* O Kanban estará disponível por meio da ferramenta ZenHub.
* [Acessar o Kanban][zenhub].

---

## Técnicas de Gerenciamento
### Velocity
* O _velocity_ deve ser medido ao final de cada _sprint_ e utilizado no planejamento da próxima _sprint_ como parâmetro para avaliar a capacidade da equipe de desenvolvimento.

### Burndown

* O _burndown_ deve ser aplicado sobre cada _sprint_ com o intuito de monitorar a entrega das atividades planejadas.
* É responsabilidade do _Scrum Master_ acompanhar o gráfico durante a _sprint_ e tomar ações para garantir as entregas ao final da _sprint_.
* O gráfico de _burndown_ será gerado automaticamente pela ferramenta ZenHub a medida que o KanBan é atualizado pela equipe.

---

## Técnicas de Codificação
### Programação em Pares
* Os pares da _sprint_ deverão ser definidos durante o _Sprint Planning_;
* O _Scrum Master_ é responsável por formar os pares;
* O quadro de conhecimentos deve ser o indicador de maior peso na formação dos pares, sendo que desenvolvedores com mais experiência em determinada área deve parear com quem possui menos conhecimento na mesma.

### Integração Contínua
* As _branchs_ `master` e `devel` estarão submetidas ao processo de integração contínua, devendo respeitar o mínimo de 90% da cobertura de testes;
* Todo _pull request_ realizado para _branch_ `devel` estará sujeito ao processo de integração contínua.
<!-- Metricas tbm estarão nesse processo?-->

### Padrões de Codificação
* O código deve ser formato seguindo os padrões de estilo e técnicas de programação adotadas pela equipe, visando assim garantir a qualidade do código gerado.

## Técnicas de Design
### Simplicidade
* Ao manusear o código a equipe deve priorizar sempre a solução mais simples que atenda as necessidades do problema.

### Refatoração
* Ao manusear o código, sempre que houver dificuldade para compreensão do mesmo a equipe deve se organizar para refatorá-lo.
* A refatoração deve ser realizada antes de fazer qualquer alteração na funcionalidade, visando garantir a integridade do código.

[zenhub]: https://github.com/fga-eps-mds/RecomendaFGA/issues#zenhub

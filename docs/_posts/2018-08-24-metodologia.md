---
layout: post
title:  "Metodologia"
date:   2018-08-24 13:50:39
categories: docs
---

A metodologia aplicada netes projeto será uma metodologia híbrida baseada nos _frameworks_ Scrum, Extreme Programming e Kanban. Abaixo segue a descrição de quais técnicas de cada _framework_ será aplicada juntamente com seu propósito.

---
# Scrum

O _framework_ Scrum será utilizado como principal base de todo o processo, sendo aplicado seus papéis e conceitos de _timeboxs_.

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

### DevOps (Não é um papel do Scrum)
São responsabilidades deste papel:
* Verificar e aceitar os _pull requests_ de acordo com os critérios definidos pelo Scrum Master e o PO;
* Garantir o disponibilidade dos ambientes de desenvolvimento, homologação e produção;
* Configurar integração e deploy contínuo;
* Registrar o _gitflow_.

### Arquiteto (Não é um papel do Scrum)
São responsabilidades deste papel:
* Organizar e modelar a arquitetura do sistema;
* Acompanhar o processo de desenvolvimento para garantir que a arquitetura está sendo seguida.

### Desenvolvedor
São responsabilidades deste papel:
* Desenvolver a história;
* Testar sempre as soluções. visando mantes no mínimo 90% da corbetura do código;
* Seguir os padrões e técnicas de programação adotados pelo Scrum Master.

## Sprints
* Duração de 7 dias
* Todas as sprints se iniciaram na quarta-feria e terão seu término na terça-feira da semana seguinte.
  * Sprints que antencedem as _releases_ poderão ser: encurtadas para sprints de 4 dias ou emendadas com a sprint anterior, gerando sprints de 11 dias. Será responsabilidade do Scrum Master, avaliar previamente, conforme andamento da equipe, qual a melhor opção será aplicada.

## Daily Meeting
* Duração Máxima: 15 minutos
* Realizadas diariamente às 15:45h
* A ausência destas reuniões deverá ser previamente comunicada pelo membro da equipe e justificada. Sendo obrigação do mesmo informar o andamento das duas atividades neste dia pelos meios de comunicações definidos pela equipe.

## Sprint Review
* Duração Máxima: 1 hora
* Ocorrerão toda terça-feira, tendo início as 18h

## Sprint Restropective
* Duração Máxima: 45 minutos
* Ocorrerão toda terça-feira, tendo início as 19h

## Sprint Planning
* Duração Máxima: 2 horas
* Ocorrerão toda terça-feira, tendo início as 20h

---
# Extreme Programming

As técnicas da metodologia Extreme Programming serão aplicadas com o intuito de garantir a qualidade do código e a disseminar o conhecimento entre os integrantes da equipe.

## Técnicas de Planejamento
### User Stories
* Serão aplicadas na estimativa de tempo para planejamento da sprint;
* Deverão seguir o seguinte template:

  <blockquote><b>Eu como</b> [usuario do sistema] <b>desejo</b> [ação a ser executada] <b>para</b> [justificativa para a ação].</blockquote>

* Este template deve estar mapeado em uma Issue Template; <!-- FIXME linkar o com template criado -->
* Cada _user story_ deve possuir um conjunto de critérios de aceitação definidos pelo PO, os quais deverão ser verificados antes de afirmar a tarefa como concluída.

## Técnicas de Gerenciamento
### Velocity
* O velocity deve ser medido ao final de cada _sprint_ e utilizado no planejamento da próxima _sprint_ como parâmetro para avaliar a capacidade da equipe de desenvolvimento.

## Técnicas de Codificação
### Programação em Pares
* Os pares da sprint deverão ser definidos durante o Sprint Planning;
* O Scrum Master é responsável por formar os pares;
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

---
# Kanban

O Kanban será aplicado visando monitorar o fluxo de trabalho da equipe.

* O Kanban deverá contar com os quadros Product Backlog, Icebox, Sprint Backlog, Em progresso, Revisão e Terminados;
* É de responsabilidade de cada membro da equipe atualizar o Kanban diariamente com o _status_ de cada atividade;
* O Kanban estará disponível por meio da ferramenta ZenHub.
* [Acessar o Kanban][zenhub].

[zenhub]: https://github.com/fga-eps-mds/RecomendaFGA/issues#zenhub

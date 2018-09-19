---
layout: review
title:  "Sprint 04 - Review"
date:   2018-09-19 09:00:39
categories: sprint-review

sprint: 4
previousSprint: 3
startDate: 12/09/2018
endDate: 18/09/2018
duration: 7
plannedPoints: 9
debtPoints: 22
totalPoints: 31

plannedFinishedPoints: 3
debtFinishedPoints: 14
addPoints: 0
addFinishedPoints: 0
finishedPoints: 17
nextDebtPoints: 14

scrumMaster: Iasmin Mendes
productOwner: Renato Valério
architect: Iasmin Mendes
devops: Gabriel Valério
developmentTeam: [
  Gabriel Davi Silva Pereira,
  Heron Rodrigues Sousa,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Weiller Fernandes Pereira,
]

issues: [
    {
        number: 115,
        description: Configurar arquivos de teste,
        responsible: Iasmin Mendes,
        points: 1,
        header: Planejadas,
        headerSpan: 4,
        status: Concluída
    },
    {
        number: 54,
        description: US2 - Avaliar local (Backend),
        responsible: ['João Lucas', 'Gabriel Davi'],
        points: 3,
        status: Não Concluída
    },
    {
        number: 107,
        description: US6 - Favoritar local (Backend),
        responsible: ['Lucas Maciel', 'Weiller Fernandes'],
        points: 3,
        status: Não Concluída
    },
    {
        number: 114,
        description: Treinamento de testes,
        responsible: Iasmin Mendes,
        points: 2,
        status: Concluída
    },
    {
        number: 80,
        description: Fazer protótipo do projeto,
        responsible: Matheus Gomes e Heron,
        responsible: ['Matheus Gomes', 'Heron Souza'],
        points: 8,
        header: Dividas,
        headerSpan: 5,
        status: Não Concluída
    },
    {
        number: 83,
        description: Atualizar RoadMap Geral com as histórias de usuário,
        responsible: Iasmin Mendes,
        points: 2,
        status: Concluída
    },
    {
        number: 81,
        description: Configurar ambiente de desenvolvimento do frontend,
        responsible: ['Renato Valério', 'Equipe do FGAApp'],
        points: 5,
        status: Concluída
    },
    {
        number: 79,
        description: Elaborar identidade visual,
        responsible: ['Iasmin Mendes', 'Renato Valério'],
        points: 5,
        status: Concluída
    },
    {
        number: 33,
        description: Construir burndown de riscos,
        responsible: ['Iasmin Mendes', 'Renato Valério'],
        points: 2,
        status: Concluído
    },
]

presence : [
    {
        name: Iasmin Mendes,
        presence: true
    },
    {
        name: Renato Valério,
        presence: false,
        justified: true

    },
    {
        name: Gabriel Davi,
        presence: true
    },
    {
        name: Heron Rodrigues,
        presence: true
    },
    {
        name: João Lucas Zarbiélli,
        presence: true
    },
    {
        name: Lucas Maciel,
        presence: true
    },
    {
        name: Matheus Gomes,
        presence: true
    },
    {
        name: Weiller Fernandes,
        presence: true
    }
]

positives: [
    "Grupo alinhado",
    "Treinamento de React foi bom",
    "Pareamento rendeu"
]

negatives: [
    "Feriadão atrapalhou",
    "Caiu muito a pontuação entregue",
    "Faltou comunicação",
    "Faltou proatividade"
]

improvements: [
    "Mais comunicação",
    "Mais proatividade",
    "Mais transparência",
    "Mais compremetimento",
    "Comentários nas Issues",
    "Definir melhor os pontos com os outros grupos do App"
]


burndown: [
    "Os membros de EPS foram muito sobrecarregados nas <i>sprints</i> passadas e, devido a essa <i>sprint</i> parecer um pouco mais tranquila do que as outras houve uma descpreocupação que refletiu negativamente. <b>As <i>issues</i> foram deixadas para serem entregues ao final da <i>sprint</i>, o que acabou não dando tempo</b> e refletindo em quase metade dos pontos do Burndown não entregues.",
    "A issue planejada de configurar o ambiente de desenvolvimento do frontend ficou como débito devido a <b>alguns pontos ainda não estarem acordados com os outros grupos do App</b>.",
    "A issue referente a prototipação representa uma boa parcela do backlog, e a mesma esta apresentando-se uma <b>issue grande, somado a dificuldade técnica da equipe</b> resultou na não entrega da issue."
]

velocity: [
    "Até a <i>sprint</i> 2, a grande maioria dos pontos entregues foram referente as atividades de EPS. Na <i>sprint</i> 3, teve um grande diferencial de que uma parte considerável dos pontos eram de responsabilidade do time de desenvolvimento. Portanto, optou-se por uma <i>sprint</i> de 44 pontos, sabendo-se que o <i>velocity</i> era de 30 pontos contando que teríamos mais trabalho mas este estaria melhor distribuído entre a equipe. Mediante as falhas das entregas - já mencionadas na análise do Burndown desta sprint - notou-se que essa foi uma <b>má decisão, de forma que a capacidade de produção da equipe foi superestimada</b>."
]

commits: [
    "Nesta <i>sprint</i> a equipe claramente deixou as entregas para o final, resultando em vários pontos de débitos para a próxima <i>sprint</i>.",
    "Como relatado na <i>Sprint Retrospective</i>, <b>faltou proatividade</b> da equipe."
]

knowledge: [
    "As melhoras em HTML e CSS eram esperadas pois os membros <b>começaram a desenvolver o prótipo</b> utilizando destas ferramentas.",
    "Melhoras em relação ao React atribuem-se ao <b>treinamento de React</b> executado durante essa sprint",
    "A grande melhora da equipe em relação ao Ruby on Rails deve-se ao esforço individual de cada um em <b>pesquisar e estudar</b> mais dessa ferramenta. Os membros João e Heron estavam em atividades relacionadas ao framework, mas os demais fizeram seus estudos a parte.",
    "A melhora quanto ao docker era esperada, pois a equipe de desenvolvimento está começando a pegar <b>atividades das quais eles necessitem usar o docker</b>."
]

pairing: []
numberPairing: [
    "Esta foi a primeira <i>sprint</i> que aplicamos o pareamento.",
    "O pareamento foi aplicado somente para o time de desenvolvimento"
]

coverage: {
    "url": "https://coveralls.io/builds/19062053",
    "review": [
        "Nesta <i>sprint</i> a equipe começou a desenvolver a API, mas o <b>treinamento sobre testes ainda não havia sido realizado</b>. Portanto, não foi exigido dos desenvolvedores que o código tivesse testes para aceitar o <i>pull request</i>. Dessa forma, a cobertura acabou ficando abaixo dos 90% determinados e foi <b>aberta uma história técnica</b> para que o código fosse testado assim que a equipe recebesse o conhecimento para tal."
    ]
}

complexity: []

duplication: []

styleSheet: [
    "O CodeClimate acusou 23 issues referente a folha de estilo no final da sprint, mas todas essas issues são provenientes do <b>código auto gerado do Rails</b> quando se cria um novo app. Algumas dessas falhas foram corrigidas durante a sprint, e as que ficaram serão corrigidas aos poucos no dercorrer do projeto."
]

maintainability: []

feedback: [
    "Nesta <i>sprint</i> houve <b>falha de ateção da equipe e do Scrum Master</b>. Mesmo realizando os stand-ups, ocorreu da <code class='highlighter-rouge'>US - Buscar local por nome</code> ser desenvolvida enquanto o Diagrama de Classe era reformulado e nós não nos atentamos a esse detalhe, de forma que a <i>user story</i> foi desenvolvida em cima do diagrama antigo.",
    "As user stories foram criadas como issues na sprint passada, e pontuadas como se o desenvolvimento da issue envolve-se o backend e o frontend. Nessa sprint, notou-se que isso é um problema, pois teoricamente, a issue <code class='highlighter-rouge'>US - Buscar locais</code>, que foi implementada nessa sprint somente na parte da API, não poderia ser dada como entregue por não possuir o frontend. Visto essa situação, sentiu-se a necessidade de mudar a metodologia, e partir de então, todas as <b>user stories devem ser criadas como épicos</b>, de forma que nós possamos quebrar em várias atividade, sendo elas, no mínimo, desenvolvimento frontend e backend. Cabe ao Scrum Master reorganizar as user stories já registradas no repositório para essa nova abordagem."
]

---

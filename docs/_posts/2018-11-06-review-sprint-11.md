---
layout: review
title:  "Sprint 11 - Review"
date:   2018-11-07 13:47:39
categories: sprint-review

sprint: 11
previousSprint: 10
startDate: 31/10/2018
endDate: 06/11/2018
duration: 7
plannedPoints: 22
debtPoints: 13
totalPoints: 35

plannedFinishedPoints: 22
debtFinishedPoints: 13
addPoints: 0
addFinishedPoints: 0
finishedPoints: 35
nextDebtPoints: 0

scrumMaster:  Gabriel Davi
productOwner: Weiller Fernandes
architect: Iasmin Mendes
devops: João
developmentTeam: [
  Renato Valério, Iasmin Mendes,
  Heron Rodrigues Sousa,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Weiller Fernandes Pereira,
]

issues: [
    {
      number: 127,
      description: US6 M1 - Criar container de favoritar local,
      responsible: ['Renato' , 'Lucas'],
      points: 3,
      status: 'Concluído',
      header: Planejadas,
      headerSpan: 6
    },
    {
        number: 157,
        description: US9 M3 - Criar método no frontend para cadastrar local na IndicaAi API,
        responsible: ['Weiller' , 'Heron'],
        points: 8,
        status: 'Concluído'
    },
    {
        number: 262,
        description: US3 M3 - Criar método para salvar os dados na API IndicaAi,
        responsible: ['Gabriel Davi', 'Weiller Fernandes'],
        points: 3,
        status: 'Concluído'
    },
    {
        number: 266,
        description:  Criar método para verificar se o usuário já foi cadastrado no sistema,
        responsible: ['Matheus' ,'Heron'],
        points: 3,
        status: 'Concluído'
    },
    {
        number: 267,
        description: Verificar token de autenticação nos métodos que já foram implementados,
        responsible: ['Matheus'],
        points: 3,
        status: 'Removido'
    },
    {
        number: 280,
        description: App versão 0.3,
        responsible: ['João Zarbiélli'],
        points: 2,
        status: 'Concluído'
    },
    {
        number: 264,
        description: US3 M5 - Adicionar imagens para o local na API IndicaAi,
        responsible: ['João Zarbiélli'],
        points: 5,
        header: Dividas,
        headerSpan: 3,
        status: 'Concluído'
    },
    {
        number: 217,
        description: US5 M2 - Criar método para buscar as informações do local na IndicaAi API,
        responsible: ['Renato', 'Lucas'],
        points: 3,
        status: 'Concluído'
    },
    {
        number: 195,
        description: Configurar/Integrar ambiente de homologação do front,
        responsible: ['João Zarbiélli',  'Iasmin Mendes'],
        points: 2,
        status: 'Concluído'
    },

]

presence : [
    {
        name: Iasmin Mendes,
        presence: true
    },
    {
        name: Renato Valério,
        presence: false

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
        presence: false
    },
    {
        name: Matheus Gomes,
        presence: true

    },
    {
        name: Weiller Fernandes,
        presence: false,
        justified: true
    }
]

positives: [
 "entrega do deploy",
 "Time buscou se ajudar bastante",
 "Scrum master bem participativo"
]

negatives: [
 "Má planejamento das issues no pareamento",
 "Má comunicação por parte dos integrantes em relação ao andamento da issue (Ter trabalho e não avisar no planning)",
 "demora para perceber que a equive estava com dificuldade e tomar uma atitude (Scrum master)",
 "Má participação e planejamento dos stand ups"
]

improvements: [
"Melhorar o planejamento dos pareamentos",
"Avisar os outro integantes do grupo sobre possível risco não entregar a issue",
"Melhorar a participação pessoal nos stand ups"
]

burndown: [
    "Nessa Sprint a entrega caminhou bem.Todavia, em certos instantes houve um grande risco da <b>não entrega</b> de algumas issues. No caso da issue de criar container para favoritar local, os responsáveis estavam ou ocupados devido problemas pessoais, ou muito ocupados com outras matérias. Por isso, para não atrapalhar a entrega o próprio scrumMaster, que já havia fechado sua issue, passou a ser responsável por terminar essa issue. Também, na issue de Verificar se o usuário já foi cadastrado no sistema, houve uma <b>má divisão no pareamento</b> e também a <b>má comunicação entre os responsáveis</b>. O membro Matheus nunca havia entrado em uma issue de backend e foi colocado com alguém que possui pouca esperiência com o backend, porém devido a má comunicação Matheus achou que estava responsável sozinho pela issue. No final, com ajuda de outros membros a issue foi concluida. A issue de verificar token de autenticação foi <b>Retirada</b> durante a sprint devido a um impasse com relação a manipulação do token com as outras equipes. As issue de lançar a versão do app e criar métodos para salvar dados na API foram concluidas com antecedência, e o restante foram concluidas mais pro final da sprint. "
]

velocity: [
    "O velocity da equipe ficou com o valor de 29. O que mostrou um grande avanço com relação  a sprint passada quando foram entregues somemente 20 pontos. Durante a sprint, alguns problemas surgiram como por exemplo, um dos integrantes não iria terminar a issue pois tinha trabalho de outras matérias, todavia o scrum master passou a tarefa para outro membro que havia fachado sua issue mais cedo."
]

knowledge: []

pairing: []

feedback: [
   "No geral,<b> foi uma ótima sprint</b>. Todas as issues propostas foram realizadas. O grupo se ajudou bastante mesmo em issues fora do pareamnento por conta desse suporte todas as issue foram fechadas."
]

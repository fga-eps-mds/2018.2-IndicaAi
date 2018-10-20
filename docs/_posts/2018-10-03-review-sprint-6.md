---
layout: review
title:  "Sprint 06 - Review"
date:   2018-09-24 09:00:39
categories: sprint-review

sprint: 6
previousSprint: 5
startDate: 26/09/2018
endDate: 02/10/2018
duration: 7
plannedPoints: 16
debtPoints: 16
totalPoints: 36

plannedFinishedPoints: 16
debtFinishedPoints: 16
addPoints: 4
addFinishedPoints: 4
finishedPoints: 36
nextDebtPoints: 0

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
        number: 117,
        description: Atualizar canvas com os novos custos,
        responsible: ['Renato Valério'],
        points: 1,
        header: Planejadas,
        headerSpan: 7,
        status: Concluído
    },
    {
        number: 139,
        description: Protótipo da tela de gerar rota,
        responsible: ['Weiller Fernandes', 'Matheus Gomes'],
        points: 2,
        status: Concluído
    },
    {
        number: 140,
        description: Protótipo de avaliar local,
        responsible: ['Weiller Fernandes', 'Matheus Gomes'],
        points: 2,
        status: Concluído
    },
    {
        number: 139,
        description: Montar apresentação da Release,
        responsible: ['Iasmin Mendes'],
        points: 3,
        status: Concluído
    },
    {
        number: 170,
        description: Ensaiar para a Release,
        responsible: Time de Desenvolvimento,
        points: 3,
        status: Concluído
    },
    {
        number: 171,
        description: Revisar EAP,
        responsible: Renato Valério,
        points: 2,
        status: Concluído
    },
    {
        number: 172,
        description: Estudar API do Google Maps,
        responsible: Gabriel Davi,
        points: 3,
        status: Concluído
    },
    {
        number: 144,
        description: Revisar documento de arquitetura,
        responsible: ['Iasmin Mendes', 'Weiller Fernandes', 'Matheus Gomes'],
        header: Dividas,
        headerSpan: 3,
        points: 3,
        status: Concluído
    },
    {
        number: 149,
        description: Configurar ambiente de homologação,
        responsible: ['Renato Valério'],
        points: 8,
        status: Concluído
    },
    {
        number: 53,
        description: US1 - Buscar locais (Frontend),
        responsible: ['João Lucas', 'Lucas Maciel', 'Heron Rodrigues'],
        points: 5,
        status: Concluído
    },
    {
        number: 176,
        description: Deploy para o ambiente de produção,
        responsible: ['Iasmin Mendes'],
        header: Adicionadas,
        headerSpan: 2,
        points: 3,
        status: Concluído
    },
    {
        number: 177,
        description: Deploy para o ambiente de homologação,
        responsible: ['Iasmin Mendes'],
        points: 1,
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
        presence: true,

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
    "Comunicação foi boa.",
    "Todo mundo trabalhou junto",
    "Ajuda com Deploy",
    "Bastantes encontros (Semana Universitária)",
    "Comunicação foi melhor"
]

negatives: [
    "Entregas continuam no final da sprint",
    "Stand-ups estão ruins"
]

improvements: [
    "Melhorar a execução dos stund-ups",
    "Não deixar pra resolver a issue no final da sprint"
]


burndown: [
    "Essa sprint foi marcada pela <b>entrega da issue de Buscar locais</b> no frontend. Essa issue já vinha de débito da sprint anterior e era um ponto crítico por ser a entrega definida pra a 1º Release. Houve <b>bastante esforço da equipe</b> para a conclusão desta tarefa, usando de vários dias da Semana Universitária para trabalhar arduamente. Durante esses dias a equipe percebeu uma <b>enorme dificuldade com o ciclo de vida do React, a qual piora quando integrado ao Redux</b>.",
    "O <b>ambiente de homologação e produção da API foi disponibilizado no Heroku</b>. E depois da entrega dessas issues, em conversas com outros grupos, percebeu-se que o Heroku não é muito adequando para o ambiente de produção por desligar o container após meia hora sem requisição, o que gera um delay e demora de resposta para o usuário na próxima vez que ele tenta acessar. Assim, uma issue já foi aberta para reavaliar esse deploy e decidir se iremos manter no heroku - comprando um plano pago - ou mudar para outra ferramenta.",
    "Com o ambiente de homologação configurado no meio da sprint, foi possível puxar as issues relacionadas ao deploy, agregando valor a entrega da 1º Release.",
]

velocity: [
    "Nessa sprint a equipe conseguiu entregar toda a pontuação planejada. Isso se deve ao fato da equipe ter planejado uma sprint mais leve, voltada a revisão de aterfatos e preparação para a relese 1. Mantendo somente as issues difíceis -  Buscar Locais no frontend e Configuração do ambiente de homologação da API - que já vinham de débito da sprint passada e ter focado bastante na resolução desses pontos.",
]

commits: [
    "Nessa sprint foi identificado um sério problema com essa métrica. <b>Boa parte do desenvolvimento na sprint foi feito no repositório do frontend, o que implicou em vários commits que não foram rastreados</b>. A princípio esta métrica estava sendo coletada pelo Insights do GitHub, contudo como o repositório do frontend é compartilhado, o Insights desse repositório não reflete a produtividade do time IndicaAi, mas sim de todos os times que estão trabalhando em paralelo no frontend. Portanto, essa métrica terá que ser reavalida, mudando de estratégia pra coleta ou substituída por algum outro parâmetro que ajude a acompanhar a produtividade do time."
]

sprintsCommits: []

knowledge: []

pairing: []
numberPairing: []

coverage: {
    "url": "https://coveralls.io/builds/19325881",
    "review": [
        "Nessa sprint a equipe conseguiu desenvolver os testes que ficaram pendentes na sprint passada, subindo a cobertura do código em 3%."
    ]
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "Nessa sprint a <b>parte da equipe evoluíu bastante em relação ao React</b>. Nas sprints seguintes o propósito será <b>compartilhar esse conhecimento</b>.",
    "Apesar da equipe evoluir em React, o <b>Redux continua sendo um obstáculo</b> para a equipe.",
    "Tendo a apresetação da primeira release no final dessa sprint, o ideal teria sido que ao final dessa sprint o <b>frontend já estivesse integrado com os outros grupos</b> e com os ambientes de homologação e produção funcionando. Contudo, <b>não foi possível realizar essa integração ainda nessa sprint</b> e esta deve ser uma tarefa priorizada para as próximas sprints.",
    "<b>A métrica relacionada a Commits terá que ser substituída ou repensada</b>, devido a dificuldade de coleta no frontend."
]

---

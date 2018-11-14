---
layout: review
title: "Sprint 08 - Review"
date: 2018-10-16 08:29:42
categories: sprint-review

sprint: 8
previousSprint: 7
startDate: 10/10/2018
endDate: 16/10/2018
duration: 7
plannedPoints: 15
debtPoints: 8
totalPoints: 26

plannedFinishedPoints: 7
debtFinishedPoints: 8
addPoints: 3
addFinishedPoints: 3
finishedPoints: 16
nextDebtPoints: 8

scrumMaster: Heron Rodrigues
productOwner: Lucas Maciel
architect: Iasmin Mendes
devops: Renato Valério
developmentTeam: [
  Gabriel Davi Silva Pereira,
  Iasmin Mendes,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Weiller Fernandes Pereira,
]

issues: [
    {
        number: 201,
        description: TS - Adicionar rota para favoritar local,
        responsible: ['Lucas Maciel'],
        points: 3,
        header: Planejadas,
        headerSpan: 5,
        status: Concluído
    },
    {
        number: 198,
        description: TS - Adicionar rota para avaliar local,
        responsible: ['Weiller Fernandes', 'João Lucas'],
        points: 3,
        status: Não Concluído
    },
    {
        number: 225,
        description: Melhorar descrição das issues,
        responsible: ['Iasmin Mendes'],
        points: 5,
        status: Não Concluído
    },
    {
        number: 199,
        description: TS - Fixar issues de estilo no codeclimate,
        responsible: ['Gabriel Davi'],
        points: 2,
        status: Concluído
    },
    {
        number: 189,
        description: Mapa de telas do protótipo,
        responsible: ['Weiller Fernandes'],
        points: 2,
        status: Concluído
    },
    {
        number: 197,
        description: Configurar/Integrar testes no frontend,
        responsible: ['Renato Valerio'],
        header: Dividas,
        headerSpan: 2,
        points: 5,
        status: Concluído
    },
    {
        number: 204,
        description: TS - Refatorar Buscar local,
        responsible: ['Matheus Gomes', 'Iasmin Mendes'],
        points: 3,
        status: Concluído
    },
    {
        number: 223,
        description: Reavaliar a métrica de número de commits,
        responsible: ['Heron Rodrigues'],
        header: Adicionadas,
        headerSpan: 2,
        points: 2,
        status: Concluído
    },
    {
        number: 226,
        description: Arrumar erro de vulnerabilidade nas dependencias de GemFile,
        responsible: ['João Lucas'],
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
        presence: false,
        justified: true
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
    "Script com a descrição para o papel de Scrum Master, TOP!",
    "Resolvido problemas com implementação do Redux"
]

negatives: [
    "Sem entrega contínua",
    "Não foram realizados pareamentos planejados",
    "Sprint estranha, feriado mais atrapalhou do que ajudou",
    "Planning na quarta(1º dia da sprint) atrasa a resolução das issues"
]

improvements: [
    "Reunião aos sabados para sanar dificuldades e melhorar o aproveitamento da equipe."
]


burndown: [
    "Essa sprint <b>não ocorreu entrega contínua</b>.",
    "A equipe conseguiu <b>entregar a issue de Refatorar Buscar local(Frontend)</b> que ja vinha de débito da sprint 7. Dificuldade com a <b>implementação do Redux no problema de uso da variavel 'locals'</b>, para uma melhor mantenabilidade do código, foi a principal causa para a demora na conclusão da issue.",
    "Configurar/Integrar testes no frontend foi mais uma issue que estava como débito e <b>também foi entregue</b>. A equipe conseguiu se <b>adaptar às tecnologias</b> para resolver a tarefa.",
    "A descrição das issues foi iniciada porém foi visto que era necessário <b>quebrar o backlog em issues menores</b>, então não foi possivel concluir a issue.",
    "O time evoluiu bastante em relação aos testes, porém ainda há algumas dificuldades. <b>A issue Adicionar rota para avaliar local ficou faltando teste de request</b>, ficará como debito para proxíma sprint.",
]

velocity: [
    "Nessa sprint a equipe não conseguiu resolver todas as issues planejadas e o velocity caiu para 22,5. A equipe entregou as issues que vinham como débito porém devido aos problemas com pareamento, teste e em quebrar o backlog, duas issue ficarão como débito."
]

knowledge: []

pairing: []
numberPairing: []

coverage: {
    "url": "https://coveralls.io/builds/19580260",
    "review": []
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "Nessa sprint se iniciou o <b>rotacionamento dos papéis</b> de Scrum Master(Heron Rodrigues) e PO(Lucas Maciel). Foi feito um <b>script</b> que ajudou bastante na realização do papel de Scrum Master.",
    "Com o feriado prolongado alguns membros tiveram compromissos que <b>acabaram prejudicando</b> na realização dos pareamentos e na entrega das issues.",
    "Fazer o review e o planning em dois dias, que antes era feito somente na terça, trouxe melhoras no planejamento da sprint. Porém a equipe acabou sentindo esse <b>dia a menos</b>, que é usado para fazer o planning, na realização das tarefas.",
    "Será necessário <b>reavaliar as métricas usadas</b>, manter somente as métricas que ainda são relevantes para equipe."
]

---

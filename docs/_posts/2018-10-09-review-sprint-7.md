---
layout: review
title:  "Sprint 07 - Review"
date:   2018-10-03 09:00:39
categories: sprint-review

sprint: 7
previousSprint: 6
startDate: 03/10/2018
endDate: 09/10/2018
duration: 7
plannedPoints: 26
debtPoints: 0
totalPoints: 26

plannedFinishedPoints: 18
debtFinishedPoints: 0
addPoints: 0
addFinishedPoints: 0
finishedPoints: 18
nextDebtPoints: 8

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
        number: 123,
        description: US5 - Visualizar local,
        responsible: ['Heron Rodrigues', 'Weiller Fernandes'],
        points: 8,
        header: Planejadas,
        headerSpan: 6,
        status: 'Concluído'
    },
    {
        number: 183,
        description: Estudar a possibilidade de usar a DigitalOcean no lugar do Heroku,
        responsible: ['Iasmin Mendes'],
        points: 2,
        status: 'Concluído'
    },
    {
        number: 187,
        description: Revisar o Protótipo,
        responsible: ['Gabriel Davi', 'Lucas Maciel'],
        points: 5,
        status: 'Concluído'
    },
    {
        number: 197,
        description: Configurar/Integrar testes no frontend,
        responsible: ['Renato Valério'],
        points: 5,
        status: 'Não Concluído'
    },
    {
        number: 204,
        description: TS - Refatorar Buscar Local,
        responsible: ['João Lucas Zarbiélli', 'Matheus Gomes'],
        points: 3,
        status: 'Não Concluído'
    },
    {
        number: 208,
        description: EVM,
        responsible: Iasmin Mendes,
        points: 3,
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
        presence: false
    },
    {
        name: Matheus Gomes,
        presence: false,
        justified: true

    },
    {
        name: Weiller Fernandes,
        presence: true
    }
]

positives: [
    "Começamos cedo a execução das tarefas",
    "Conseguimos entregar algumas tarefas cedo"
]

negatives: [
    "As issues não estão bem explicadas. O grupo teve dificuldade pra se alinhar sobre o que era pra fazer.",
    "Falta de comunicação entre a própria dupla do pareamento."
]

improvements: [
    "Descrever melhor as issues."
]

burndown: [
    "Nessa sprint <b>as issues caminharam relativamente bem</b>, sendo as issues de Revisar o Protótipo, fazer o frontend da história de visualizar o local e a issue de elaborar a EVM entregues por volta do quarto e quinto dia da sprint. Contudo isso <b>não se refletiu no burndown porque houve demora da parte do Scrum Master para aprovar os Pull Requests</b>, o que prejudicou a evidência da entrega contínua no respectivo gráfico.",
    "A issue referente a refatoração do código de Buscar Local no frontend foi <b>entregue no final da sprint, e não foi aprovada pelo Arquiteto</b> do projeto. O objetivo dessa issue era principalmente melhorar o código em relação há uma variável denominada `locals`, que fica transitando entre os componentes do React por meio da chamada de eventos. Acontece que o entendimento do código está complexo, e isso fere a arquitetura do sistema que tem o objetivo de usar o Redux justamente para evitar essa descentralização da informação. A issue era justamente para arrumar esse ponto do projeto, contudo na entrega a dupla melhorou o código em relação a outros pontos, mas não em relação a esse ponto que era crucial. Mediante a não resolução do problema e a entrega realizada somente no final da sprint, essa issue acabou ficando de débito para a próxima sprint.",
    "A issue de configurar testes no frontend não foi entregue devido a dificuldade técnica da equipe em relação as tecnologias necessárias."
]

velocity: [
    "O velocity da equipe voltou ao valor de 23. Apesar de sprint ter sido planejada dentro do velocity da equipe, e com as issues cabíveis dentro do tempo da sprint, <b>surgiram novas dificuldades técnicas em relação a configuração do ambiente de teste no React</b> e houve <b>falha de comunicação</b> na entrega da issue de refatorar a busca de local, esses fatores acabaram implicando na entrega - 18 pontos - abaixo da pontuação que a equipe costuma entregar - 23 pontos."
]

knowledge: []

pairing: []
numberPairing: []

coverage: {
    "url": "https://coveralls.io/builds/19455961",
    "review": []
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "O maior problema dessa sprint foi a <b>falta da descrição nas issues</b>. Foi relatado pela dupla responsável pela issue de Visualizar Local que eles tiveram dificuldade de entender no começo o que realmente era para eles fazerem na issue. Eles conseguiram sanar essa dúvida durante os primeiros stand-ups da sprint e assim conseguiram entregar a tarefa. Contudo, a issue de refatorar a busca de locais teve o problema de ser deixada para ser implementada no final da sprint devido os membros estarem envolvidos em provas de outras disciplinas, e somado a falta de uma especificação sobre o que era pra ser feita na issue, a dupla acabou entregando algo que era fora do esperado e não resolvia o problema real. Assim, <b>objetiva-se uma revisão o mais rápido possível da descrição das issues</b>, para evitar retrabalhos como o que teremos que fazer na próxima sprint.",
    "Quando esta sprint foi planejada, esperava-se um ritmo saudável de produção e que a equipe seria capaz de entregar todos os pontos. <b>Nós tivemos um ritmo saudável de produção, mas devido a falhas de comunicação não conseguimos entregar o proposto</b>."
]

---

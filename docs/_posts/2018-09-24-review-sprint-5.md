---
layout: review
title:  "Sprint 05 - Review"
date:   2018-09-24 09:00:39
categories: sprint-review

sprint: 5
previousSprint: 3
startDate: 19/09/2018
endDate: 25/09/2018
duration: 7
plannedPoints: 29
debtPoints: 14
totalPoints: 46

plannedFinishedPoints: 13
debtFinishedPoints: 14
addPoints: 3
addFinishedPoints: 3
finishedPoints: 30
nextDebtPoints: 16

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
        number: 53,
        description: US1 - Buscar Local (Frontend),
        responsible: ['João Lucas', 'Lucas Maciel'],
        points: 5,
        status: Não concluído,
        header: Planejadas,
        headerSpan: 9,
    },
    {
        number: 137,
        description: Protótipo de favoritar local,
        responsible: ['Heron Sousa', 'Gabriel Davi'],
        points: 2,
        status: Concluído
    },
    {
        number: 138,
        description: Protótipo de visualizar local,
        responsible: ['Heron Sousa', 'Gabriel Davi'],
        points: 3,
        status: Concluído
    },
    {
        number: 141,
        description: Protótipo de visualizar publicidade,
        responsible: ['Heron Sousa', 'Gabriel Davi'],
        points: 1,
        status: Concluído
    },
    {
        number: 143,
        description: Adicionar fontes no manual de identidade visual do App,
        responsible: Renato Valério,
        points: 1,
        status: Concluído
    },
    {
        number: 144,
        description: Revisar documento de arquitetura,
        responsible: ['Iasmin Mendes', 'Weiller Fernandes', 'Matheus Gomes'],
        points: 3,
        status: Não concluído
    },
    {
        number: 146,
        description: Revisar Backlog,
        responsible: ['Weiller Fernandes'],
        points: 2,
        status: Concluído
    },
    {
        number: 149,
        description: Configurar ambiente de homologação,
        responsible: ['Renato Valério'],
        points: 8,
        status: Não concluído
    },
    {
        number: 145,
        description: Colocar burndown de riscos no github pages,
        responsible: ['Iasmin Mendes'],
        points: 2,
        status: Concluído
    },
    {
        number: 80,
        description: Fazer protótipo do projeto,
        responsible: ['Matheus Gomes', 'Heron Souza'],
        points: 8,
        header: Dividas,
        headerSpan: 3,
        status: Concluído
    },
    {
        number: 54,
        description: US2 - Avaliar local (Backend),
        responsible: ['João Lucas', 'Gabriel Davi'],
        points: 3,
        status: Concluído
    },
    {
        number: 107,
        description: US6 - Favoritar local (Backend),
        responsible: ['Lucas Maciel', 'Weiller Fernandes'],
        points: 3,
        status: Concluído
    },
    {
        number: 105,
        description: TS -  Testar a busca de locais por nome,
        responsible: ['Lucas Maciel', 'Gabriel Davi'],
        points: 3,
        header: Adicionadas,
        headerSpan: 3,
        status: Concluído
    },
    {
        number: 162,
        description: Adicionar link de fácil acesso ao protótipo,
        responsible: ['Iasmin Mendes'],
        points: 0,
        status: Concluído
    },
    {
        number: 164,
        description: Adicionar canal de comunicação no README,
        responsible: ['Iasmin Mendes'],
        points: 0,
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
    "Comunicação foi boa."
]

negatives: [
    "Teste ainda é uma dificuldade",
    "Maior parte do tempo estudando o Redux.",
    "Não houve entrega contínua nessa sprint.",
    "Falta de organização no pareamento.",
    "Os stand-ups virtuais não foram realizados."
]

improvements: [
    "Estudar React"
]


burndown: [
    "Nessa sprint a <b>issue referente ao protótipo</b>, que vinha de débito de duas sprints passadas,  <b>foi quebrada em várias outras issues</b>. Essa foi uma <b>boa decisão</b> tomada pelo grupo, pois finalmente a equipe conseguiu registrar a entrega de tarefas referentes ao protótipo ao invés de ficar com uma issue enorme de débito ao final de cada sprint como vinha acontecendo.",
    "<b>A entrega contínua foi bem baixa</b> nessa sprint, mas por uma questão da <b>equipe estar se habituando a utilizar a comunicação pelos Pull Requests</b>. No caso, a equipe foi orientada a abrir o Pull Request assim que começasse a desenvolver e colocasse o WIP - Work in Progress - no nome do PR, assim o Scrum Master poderia acompanhar mais fácil o que estava sendo desenvolvido durante a sprint. Ao terminar o desenvolvimento a equipe deveria retirar o WIP para identificar que o PR estaria pronto para ser aprovado, contudo o time de desenvolvimento não lembrou de fazer isso e os Pull Requests foram ficando para o final da sprint.",
    "A issue de elaborar o frontend da busca de locais ficou como débito devido a equipe estar com <b>dificuldade de utilizar o React integrado com o Redux</b>. Assim a equipe passou mais tempo estudando como utilizar o Redux do que implementando a issue, o que implicou no seu débito ao final da sprint.",
    "A issue de documento de arquitetura ficou como débito por uma questão de <b>falha de organização da equipe</b> que acabou deixando a issue para o final da sprint e acabou percebendo ao final que alguns pontos ainda deviam ser alinhados com os outros grupos relacionados ao Integra App.",
    "A issue de Configurar Ambiente de homologação não foi entregue devido a <b>dificuldade da equipe em configurar a aplicação no Heroku</b>",
    "A issue de Testar Locais por nome não foi planejada para a sptint, mas ela acabou sendo implementada pela equipe de desenvolvimento enquanto eles estudavam e implementavam os testes relacionados a outras histórias. Somente foi identificado que essa issue havia sido executado durante a revisão dos Pull Requests, então consideramos ela como adicionadas e a fechamos.",
    "As issues de adicionar link para o protótipo e adicionar canal de comunicação no Readme foram adicionadas a essa sprint  por serem tarefas simples de serem executadas e feitas em paralelo enquanto o Scrum Master elaborava a documentação da sprint."
]

velocity: [
    "Para essa sprint foi planejada uma uma <b>pontuação bem acima do velocity</b> da equipe por <b>boa parte das histórias - 6 pontos - serem de débito da sprint passada e estarem quase fechadas</b>, faltando somente testar. A equipe se planejou para reunir logo no início da sprint para realizar esses testes e entregar esses pontos. Contudo, a confecção de testes levou muito mais tempo do que havia sido previsto, atrapalhando o que havia sido planejado e se demonstrando uma <b>má decisão</b>.",
    "Além dos pontos referentes aos testes havia <b>8 pontos relacionados ao protótipo</b> que faltava somente realizar algumas correções na revisão do Pull Request para ser aceito, que foi deixado para o final da sprint.",
    "Somado esses pontos de débito que se supôs que a equipe terminaria rápido com as <b>dificuldades das issues planejadas para essa sprint</b>, novamente a equipe acabou entregando menos do que o planejado. Assim o <b>Scrum Master começa a ter consiência de que o velocity da equipe é realmente de 23 pontos e deve-se planejar a sprint em cima dessa pontuação independente de qualquer fator externo que possa influenciar.</b>"
]

commits: [
    "O gráfico de Commits por Dia, evidencia claramente que nessa sprint as <b>entregas foram deixadas em sua maioria para o final da sprint</b>, como relatado na análise do Burndown dessa sprint. Durante o 2º ao 4º dia de sprint a equipe focou na realização dos testes que estavam de débito da sprint passada, focando somente depois nas issues realmente planejadas para a sprint.",
]

sprintsCommits: [
    "Mesmo com esses poréns, <b>a equipe aumentou sua produtividade nessa sprint</b>, como é possível ver no gráfico de Commits por sprint, no qual a média de commits por dia da equipe aumentou."
]

knowledge: []

pairing: []
numberPairing: []

coverage: {
    "url": "https://coveralls.io/builds/19192644",
    "review": [
        "Nessa sprint a equipe conseguiu desenvolver os testes que ficaram pendentes na sprint passada, subindo a cobertura do código em 3%."
    ]
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "Nessa sprint a equipe conseguiu <b>evoluir em relação aos testes do backend</b>. Ainda existem dificuldades com a ferramente - RSpec - mas, em geral, a equipe já está um pouco mais familizarizada com o que são testes e a diferença entre testes unitários, de integração, e funcionais.",
    "A equipe começou a usar a <b>comunicação nos Pull Requestes</b>, resolvendo os comentários colocados no review.",
    "O <b>ambiente de homologação não foi entregue</b> nessa sprint, e esta issue passa a ser uma <b>prioridade na próxima sprint</b> de forma que seja possível disponibilizá-lo para teste a tempo da primeira release do produto."
]

---

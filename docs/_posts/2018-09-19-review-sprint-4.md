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
    "Mudou a cor do nosso módulo de aplicativo e a equipe ficou mais satisfeita",
    "Toda a equipe começou a mecher com o código",
    "Treinamento de teste foi top"
]

negatives: [
   "Indecisão do cliente",
   "Muita prova de outras matérias durante a sprint",
   "Testes foram difíceis: Ninguém terminou as issues",
   "Issue do protótipo estava muito grande"
]

improvements: [
    "Estudar mais testes",
    "Separar os dias da Sprint Review e da Sprint Planning"
]


burndown: [
    "Esta sprint trouxe de débito da sprint passada a issue de confeção do protótipo. <b>No planning desta sprint não foi identificado que essa issue deveria ser quebrada</b>, e o resultado foi que essa issue atrapalhou o burndown novamente. Por ser uma issue grande - de 8 pontos - mais uma vez ela não foi entregue.",
    "Dos outros 6 pontos que ficaram de débito nessa sprint, ambos são referente a implementação de user stories. E a falta de entrega desses pontos refere-se a <b>dificuldade da equipe em fazer os testes</b>. Assim, as funcionalidades foram implementadas, mas os pull requests não foram aprovados pela falta de testes.",
    "A entrega contínua apresentada no burndown refere-se a atividades de gerência e documentação do projeto."
]

velocity: [
    "Nessa sprint, EPS conseguiu sanar todos os pontos que estavam de dívida da sprint anterior. Contudo, como já explicado na análide no Burndown, O time de desenvolvimento teve dificuldade para entregas as histórias testadas e o protótipo finalizado. O que implicou diretamente na queda do velocity."
]

commits: [
    "Como percebe-se no gráfico, essa sprint houve uma <b>queda na produtividade</b> da equipe. Atribuisse isso ao fato da equipe como um todo estar sobrecarregada com <b>provas de outras disciplinas</b>.",
    "Outro motivo que também atrapalhou a produtividade da equipe foi a <b>dificuldade na realização dos testes</b>. O time de desenvolvimento conseguiu implementar com certa facilidade as funcionalidades, contudo, ficou travado para confeccionar os testes depois."
]

knowledge: [
    "A equipe melhorou principalmente em testes devido ao <b>treinamento</b> aplicado nesta sprint, contudo, o conhecimento em testes ainda se mostrou um obstáculo para a equipe."
]

pairing: []
numberPairing: [
    "Nesta sprint o pareamento, os membros de EPS não conseguiram parear como havia sido planejado devido a falta de organização da dupla e dificuldade para encontrar horários compatíveis."
]

coverage: {
    "url": "https://coveralls.io/builds/19062053",
    "review": [
        "A cobertura subiu nessa sprint, pois o treinamento de testes usou o próprio código que havia sido elaborado pelo time de desenvolvimento na Sprint 3 para busca de locais como exemplo. Assim, ao final do treinamento, o código testado foi submetido para a <code>devel</code> com o objetivo de ser usado como exemplo para os testes futuros."
    ]
}

complexity: []

duplication: []

styleSheet: [
    "As issues da sprint passada, apresentadas no CodeClimate, referente a aplicação da folha de estilo nos arquivos auto-gerados pelo Rails, ainda não foram solucionadas nessa sprint."
]

maintainability: []

feedback: [
    "Nessa sprint foi identificado que houve <b>falha no planejamento</b>. Até então nossos rituais - sprint review, sprint retrospective e sprint planning - aconteciam um em sequência do outro toda terça-feira. Isso acarretou que o <b>planning era elaborado sem o Scrum Master ter analisado com calma as métricas e os resultados do final da sprint</b>. Dessa forma, a issues de <code>Confeccionar Protótipo</code>, que deveria ter sido quebrada em issues menores depois de ter ficado como débito da sprint 3, passou para a sprint 4 ainda como uma única história. O que implicou novamente em uma <b>issue grande que não foi entregue dentro do tempo</b> da sprint apesar da equipe ter avançado bastante no seu desenvolvimento. O problema só foi identificado quando o Scrum Master estava transpondo os dados da sprint para a documentação do projeto. Mediante essa situação, a equipe optou por <b>dividir os rituais em dois dias</b>. Na terça-feira será o fechamento da sprint realizando os rituais de review e retrospective, e na Quarta-feira será realizado o planning, com o Scrum Master já tendo avaliado todos os fatores referentes ao fechamento da sprint passada.",
    "Também foi notável nessa sprint a <b>dificuldade da equipe com a elaboração de testes</b>, portanto deve-se na próxima sprint promover treinamento, pareamentos com EPS ou dojos que visem sanar o quanto antes esse obstáculo.",
    "Outro problema identificado pelo Scrum Master refere-se aos stand-ups. Até então os stand-ups estavam sendo realizados de terça a sexta-feira, que são os dias que a equipe tem maior disponibilidade presencial. Contudo, <b>durante o final de semana e a segunda-feira - que é o período que a equipe mais produz - não há a realização de stand-ups</b>, e o time de desenvolvimento somente mandava as dúvidas pelo Telegram caso precisassem. Isso acarretou que a <b>dificuldade com testes que a equipe estava somente foi identificada no último dia da sprint</b>, que era quando ocorria stand-up de novo. Dessa forma não foi mais possível corrigir o problema antes que a sprint acabasse.",
    "Além da questão do stand-up não estar sendo realizado todos os dias, ainda há a ocorrência de <b>ausência de membros</b> durante o stand-up. O que implica no desalinhamento da equipe sobre as atividades em andamento.",
    "O time de desenvolvimento tem relatado que <b>os pareamentos tem sido bastante produtivos</b>."
]

---

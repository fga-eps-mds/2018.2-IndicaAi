---
layout: review
title:  "Sprint 12 - Review"
date:   2018-11-13 00:00:01
categories: sprint-review

sprint: 12
previousSprint: 11
startDate: 07/11/2018
endDate: 13/11/2018
duration: 7
plannedPoints: 59
debtPoints: 2
totalPoints: 61

plannedFinishedPoints: 48
debtFinishedPoints: 2
addPoints: 0
addFinishedPoints: 0
finishedPoints: 50
nextDebtPoints: 11

scrumMaster: Lucas Maciel
productOwner: João Lucas Fragoso Zarbiélli
architect: Iasmin Mendes
devops: Matheus Gomes Ferreira
developmentTeam: [
  Iasmin Mendes,
  Renato Valério,
  Gabriel Davi Silva Pereira,
  Heron Rodrigues Sousa,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Weiller Fernandes Pereira
]

issues: [
    {
        number: 64,
        description: Implementar método que retorna os locais favoritos na API,
        responsible: ['Matheus', 'Weiller Fernandes'],
        points: 3,
        header: Planejadas,
        headerSpan: 14,
        status: Concluído
    },
    {
        number: 134,
        description: Cadastrar publicidade,
        responsible: ['Heron Rodrigues', 'Renato Valério'],
        points: 5,
        status: Concluído
    },
    {
        number: 135,
        description: Destacar publicidade,
        responsible: ['Heron Rodrigues', 'Renato Valério'],
        points: 3,
        status: Concluído
    },
    {
        number: 261,
        description: Carregar as categorias que o usuário pode selecionar no cadastro,
        responsible: ['Weiller', 'matheus'],
        points: 3,
        status: Concluído
    },
    {
        number: 285,
        description: Fix the display problem in the map,
        responsible: ['Gabriel Davi', 'Iasmin Mendes'],
        points: 3,
        status: Não Concluído
    },
    {
        number: 125,
        description:  US4 - Gerar rota para o local,
        responsible: ['Gabriel Davi', 'Iasmin Mendes'],
        points: 13,
        status: Concluído
    },
    {
        number: 265,
        description:  Adicionar componentes de upload de imagem no cadastro,
        responsible: ['Lucas Maciel', 'João Lucas'],
        points: 5,
        status: Concluído
    },
    {
        number: 202,
        description:  Submeter as imagens pelo formulário de cadastro,
        responsible: ['Lucas Maciel', 'João Lucas'],
        points: 3,
        status: Concluído
    },
    {
        number: 167,
        description: Criar método de verificação do token na IndicaAi API,
        responsible: ['Gabriel Davi', 'Iasmin Mendes'],
        points: 5,
        status: Não Concluído
    },
    {
        number: 267,
        description: Verificar token de autenticação nos métodos que já foram implementados,
        responsible: ['Gabriel Davi', 'Iasmin Mendes'],
        points: 3,
        status: Não Concluído
    },
    {
        number: 212,
        description: Teste de Usabilidade - Cadastrar Local via Google API,
        responsible: ['Lucas Maciel', 'João Lucas'],
        points: 3,
        status: Concluído
    },
    {
        number: 206,
        description: Teste de usuabilidade - Buscar local,
        responsible: ['Lucas Maciel', 'João Lucas'],
        points: 3,
        status: Concluído
    },
    {
        number: 188,
        description: Integrar nosso app com a branch devel do front,
        responsible: ['Matheus', 'Heron Rodrigues'],
        points: 5,
        status: Concluído
    },
    {
        number: 247,
        description: Lançar versão do app 0.4,
        responsible: ['Mathues', 'Heron Rodrigues'],
        points: 2,
        status: Concluído
    },
    {
        number: 274,
        description: Fixing Heroku migrate,
        responsible: ['Gabriel Davi', 'Iasmin Mendes'],
        points: 2,
        header: Dividas,
        headerSpan: 1,
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
    "Entrega considerável de pontos",
    "Equipe de Desenvolvedores está com mais facilidade de uso da tecnologia utilizada",
    "Colaboração entre os membros da equipe"
]

negatives: [
    "Ausência de alguns membros da equipe em durante os encontros e/ou pelo Telegram",
    "Integração falha com outros grupos do Integra App",
    "Essa Sprint não teve Stand Ups presenciais",
    "Não foram entregues os pontos de todas as issues planejadas",
    "Entrega contínua",
    "Prazo curto para entrega de todas as issues"
]

improvements: [
    "Tentar melhorar a comunicação com outros grupos do Integra App",
    "Melhorar a participação em pareamentos presenciais",
    "Entrega Contínua"
]

burndown: [
    "Na sprint em questão a conclusão das tarefas occorreu de maneira quase linear e constante, porém o resultado não foi refletido rapidamente em Deploys no repositório do backend ,pelo menos.",
    "Como o projeto está chegando ao final a maioria das issues estavam voltadas para o frontend do aplicativo, e as poucas issues do backend eram voltadas para alguma correção de código requisitada pelo frontend do aplicativo, por isso algumas issues foram realizadas em conjunto o front e o back end, gerando um atraso no término da mesma, como na issue de destacar locais como anúncio, que precisava de uma pequena refatoração no backend.",
    "Nas issues de Enviar Imagem do front para o backend e Gerar Rotas Para os Locais a conclusão das tarefas ocorreram surpreendentemente sem grandes problemas, dada a complexidade esperada, isso se deve ao amadurecimento da equipe com as ferramentas utilizadas",
    " As issues relacionadas a revisão dos códigos para verificação do token de usuário no backend não foram concluídas devido a coplexidade e a dependência dos codigos que foram modificados, assim necessitando também uma revisão dos testes. Já a issue de integração com os outros grupos do aplicativo IntegraApp parece meio incerta, porém a conclusão mínima da issue voltada para esse problema foi completada"
]

velocity: [
    "O velocity da equipe subiu um pouco em relação a sprint passada para 26,5 devido ao grande número de pontos que pegamos nessa sprint, mais precisamente 61 pontos. Isso ocorreu devido a chegada da data final de entrega do projeto do aplicativo e disponibilidade adicional de alguns integrantes do grupo."
]

knowledge: []

pairing: []

coverage: {
    "url": "https://coveralls.io/builds/20112562",
    "review": [
        "Na Sprint em questão como a maior parte das issues estava voltada para o Front End, não ouve mudanças significativas na cobertura de código relevante"
    ]
}

complexity: []

duplication: []

styleSheet: []

maintainability: []

feedback: [
    "Essa foi uma issue incomun em que pegamos a maior quantidade de pontos do projeto até o momento, 61 pontos. Nem todos os pontos foram concluídos devido a problemas isolados, mas isso não vejo como um ponto negativo, pois conseguimos realizar a maioria das tarefas atribuidas a equipe de desenvolvedores, e também houve um aumento significativo de ajuda mútua dentro da equipe.",
    "Para a próxima sprint vamos manter o foco para conseguirmos ser mais eficientes e continuar mantendo também uma comunicação com os integrantes do Integra App para tentar previnir imprevistos para a 2 Release na matéria, esse é o ponto mais crítico no momento."
]

---

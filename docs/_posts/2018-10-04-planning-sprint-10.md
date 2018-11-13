---
layout: planning
title:  "Sprint 07 - Planning"
date:   2018-10-24 18:00:10
categories: sprint-planning

sprint: 10
previousSprint: 9
startDate: 24/10/2018
endDate: 30/10/2018
duration: 7
plannedPoints: 15
debtPoints: 8
totalPoints: 26

scrumMaster: Weiller Fernandes Pereira
productOwner: Heron Rodrigues
architect: Iasmin Mendes
devops: Iasmin Mendes
developmentTeam: [
  Gabriel Davi Silva Pereira,
  Heron Rodrigues Sousa,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Matheus Gomes Ferreira,
  Renato Valério,
]

issues: [
    {
        number: 234,
        description: US10 M1 - Armazenar token do usuário na store,
        responsible: ['Heron Rodrigues', 'Weiller Fernandes'],
        points: 8,
        header: Dividas,
        headerSpan: 1,
    },
    {
        number: 264,
        description: US3 M5 - Adicionar imagens para o local na API IndicaAi,
        responsible: ['João Lucas', 'Heron Rodrigues'],
        points: 5,
        header: Planejadas,
        headerSpan: 4,
    },
    {
        number: 260,
        description: US9 M2 - Exibir informações do local antes do usuário confirmar o cadastro,
        responsible: ['Gabriel Davi', 'Matheus Gomes'],
        points: 3,
    },
    {
        number: 256,
        description: US5 M3 - Linkar as telas em que um local é exibido para redirecionar para a página de Visualização do Local,
        responsible: ['Lucas Maciel'],
        points: 2,
    },
    {
        number: 195,
        description: Configurar/Integrar ambiente de homologação do front,
        responsible: ['Iasmin Mendes'],
        points: 5,
    },
    {
        number: 127,
        description: US3 M1 - Criar container para cadastrar local,
        responsible: ['Heron Rodrigues'],
        points: 5,
        header: Adicionadas,
        headerSpan: 3,
    },
    {
        number: 217,
        description: US5 M2 - Criar método para buscar as informações do local na IndicaAi API,
        responsible: ['Renato Valério', 'Lucas Maciel'],
        points: 3,
    },
    {
        number: 245,
        description: App - Versão 0.2,
        responsible: ['Iasmin Mendes'],
        points: 2,
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
        presence: true
    }
]

positives: [
    "Reunião de sábado continua sendo produtiva",
    "João conseguiu contornar parcialmente o problema da falta de celular usando o email para comunicação",
    "Puxar uma nova issue para trabalhar logo que conclui a primeira"
]

negatives: [
    "Baixa presença nos stand-ups",
    "Server do front nos causou alguns problemas",
    "João sem celular ainda dificulta em alguns momentos a comunicação"
]

improvements: [
    "Fazer apenas o necessário para fechar a issue",
    "Melhorar entrega contínua"
]

burndown: [
    "Nessa Sprint <b>a equipe conseguiu melhorar um pouco a entrega contínua</b>, mas não ainda no nível que desejamos, duas issues foram concluídas no terceiro dia de Sprint, a de lançar a versão 0.2 do app e a de Armazenar token do usuário na store, totalizando 10 pontos, mas todas as outras issues acabaram ficando apenas para o final da Sprint ou então de débito para a próxima.",
    "A issue de Linkar as telas em que um local é exibido para redirecionar para a página de Visualização do Local foi <b>concluída e fechada no último dia de Sprint</b>, mas ela acabou gerando <b>alguns conflitos</b> para a issue de Criar container para cadastrar local, pois alguns arquivos foram modificados nela que impactaram na segunda, por sorte esses conflitos foram resolvidos a tempo da issue ser concluída.",
    "A issue de Exibir informações do local antes do usuário confirmar o cadastro foi <b>entregue sem muitos problemas</b> e as issues de Adicionar imagens para o local na API IndicaAi, Configurar/Integrar ambiente de homologação do front e Criar método para buscar as informações do local na IndicaAi API acabaram <b>ficando de débito.</b>"
]

velocity: [
    "O velocity da equipe <b>caiu para 22,5 pontos.</b> Com 20 pontos entregues e 13 ficando de débito, nessa etapa final de projeto vimos que não temos alternativas a não ser puxar mais issues para cada par, apesar de terem sido deixados 13 pontos de dívida, provavelmente 8 deles seriam entregues com um dia a mais de trabalho, então decidimos tentar novamente para a sprint seguinte a estratégia de alocar <b>duas issues para cada pareamento,</b> com o objetivo de entregar 22 pontos Planejados e os 13 de débito, totalizando <b>35 pontos.</b>"
]

knowledge: []

coverage: {
    "url": "https://coveralls.io/builds/19455961",
    "review": []
}

feedback: [
    "Um ponto positivo dessa sprint foi que houve uma <b>melhora na entrega contínua</b> e consequentemente no <b>gráfico de burndow,</b> com issues sendo entregues na metade da sprint e novas já sendo puxadas, contudo ainda houveram falhas e o número de <b>pontos de débito acabou ficando muito elevado</b>, para contornar isso, a próxima sprint já se inicia com todas as duplas tendo duas issues atribuídas, com isso esperamos que haja melhor planejamento na execução de cada tarefa."
]

---

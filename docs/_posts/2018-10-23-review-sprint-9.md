---
layout: review
title:  "Sprint 09 - Review"
date:   2018-10-23 09:50:39
categories: sprint-review

sprint: 9
previousSprint: 8
startDate: 17/09/2018
endDate: 23/10/2018
duration: 7
plannedPoints: 46
debtPoints: 3
totalPoints: 49

scrumMaster: Matheus Gomes Ferreira
productOwner: Lucas Maciel
architect: Iasmin Mendes
devops: Renato Valério
developmentTeam: [
  Gabriel Davi Silva Pereira,
  Iasmin Mendes,
  João Lucas Fragoso Zarbiélli,
  Lucas Maciel Aguiar,
  Heron Rodrigues,
  Weiller Fernandes Pereira,
]

issues: [
    {
        number: 158,
        description: Cadastrar local via Google API (Frontend),
        responsible: ['Renato Valério', 'Gabriel Davi'],
        points: 13,
        header: Planejadas,
        headerSpan: 7,
    },
    {
        number: 57,
        description: Cadastrar Local (Backend),
        responsible: ['Lucas Maciel'],
        points: 8,
    },
    {
        number: 60,
        description: Visualizar local (Backend),
        responsible: ['João Lucas'],
        points: 8,
    },
    {
        number: 234,
        description: Verificar login (Frontend),
        responsible: ['Heron Rodrigues', 'Weiller Fernandes'],
        points: 8,
    },
    {
        number: 235,
        description: Quebrar as issues,
        responsible: ['Ismin Mendes'],
        points: 3,
    },
    {
        number: 236,
        description: Organizar lançamento de versão do APP,
        responsible: ['Weiller Fernandes'],
        points: 3,
    },
    {
        number: 237,
        description: Reavaliar as métricas usadas,
        responsible: ['Matheus Gomes'],
        points: 3,
    },
    {
        number: 198,
        description: Avaliar local(Backend),
        responsible: ['João Lucas', 'Weiller Fernandes'],
        header: Dividas,
        headerSpan: 1,
        points: 3,
    },
]

knowledge: true

presence : [
    {
        name: Iasmin Mendes,
        presence: true
    },
    {
        name: Renato Valério,
        presence: true
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

pairing: []

overview: [
    "Nessa sprint vamos <b>focar principalmente no cadastro de locais</b>. São issues com pontuação alta, mas faltando apenas 5 sprints para a release 2 e essa sendo <b>uma das principais funções do aplicativo e que interfere diretamente em outras issues</b>, ja deveriamos começar o desenvolvimento para sanar problemas o quanto antes.",
    "A issue Avaliar local(Backend), que vem como débito, <b>faltando apenas testes</b> ficará com a mesma dupla da sprint passada, pois ja <b>possuem um maior conhecimento do que esta faltando e para ganhar tempo por causa da alta pontuação da sprint atual</b>.",
    "E teremos a issue 'Quebrar as issues' que <b>foi um problema na sprint passada</b> e causou débito em uma das issues planejadas.",
    "Essa sprint <b>terá 49 pontos</b> mesmo sabendo que está acima do velocity de 22,5 pontos, e que planejar acima do velocity é uma coisa ruim. Essa decisão deve-se ao fato dessa sprint ter algumas <b>issues com pontuação alta mas issues que interferem em outras funcionalidades</b> e devemos fazer o quanto antes. <b>Planejamos reunião com toda a equipe para não limitar a resolução de problemas com as tarefas somente a dupla de pareamento</b> e não fazer isso pessoalmente não estava sendo efetivo."
]

---

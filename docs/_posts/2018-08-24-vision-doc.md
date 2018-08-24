---
layout: post
title:  "Documento de Visão"
date:   2018-08-24 13:50:39
categories: docs
---

## Histórico de Revisão

| Data       | Responsável          | Versão   | Mudança realizada                                 |  
| ---------- | -------------------- |:--------:| ------------------------------------------------- |
|**15/03/17**|  Iasmin Mendes     | 0.1  | Criação do Documento de Visão                         |   

-----

[1. Introdução](#1-introdução)   
[2. Posicionamento](#2-posicionamento)   
[3. Descrições dos Envolvidos e dos Usuários](#3-descrições-dos-envolvidos-e-dos-usuários)   
[4. Visão Geral do Produto](#4-visão-geral-do-produto)   
[5. Requisitos Funcionais](#5-requisitos-funcionais)   
[6. Restrições](#6-restrições)   
[7. Requisitos Não Funcionais](#7-requisitos-não-funcionais)

-----
## 1. Introdução

Este documento visa o entendimento geral do projeto ao definir as necessidades para o desenvolvimento do Sistema Inteligente de Gestão de Salas (SIGS), o qual refere-se a um sistema para a alocação e gerenciamento das salas da Universidade de Brasília - UnB. As informações contidas neste documento são apresentadas com alto nível de abstração, de forma que o entendimento sobre o sistema seja claro para todos os envolvidos na produção. Além dos atributos necessários para a compreensão do software, também será descrito o sistema de forma contextual, destacando o seu posicionamento frente ao problema, os envolvidos e seu determinado escopo. Para tal, segue-se uma organização em tópicos informativos relacionados às necessidade do projeto.

### 1.1 Finalidade

O presente documento tem como finalidade manter uma visão comum para os envolvidos no projeto do sistema de alocação e gerenciamento de salas da UnB ao expor as ideias necessárias para seu desenvolvimento.

### 1.2 Escopo

São tratados nesse documento os pontos necessários para a elaboração da aplicação, desde a concepção do projeto até a implantação, de forma que possam ser entendidos sem o total conhecimento dos termos técnicos utilizados por desenvolvedores.

### 1.3 Definições, Acrônimos e Abreviações

Abaixo serão apresentados alguns conceitos de documentação de software desejáveis para o melhor entendimento deste documento e termos aplicados ao contexto da universidade:

1. UnB: Universidade De Brasília.
2. Decano: Em uma instituição, é o membro mais antigo. Na Universidade de Brasília os Decanos são designados pelo Reitor e aprovados pelo conselho universitário. Suas principais competências são coordenar e fiscalizar as atividades universitárias de suas respectivas áreas, dentro de suas atribuições delegadas.
3. Prefeitura: Órgão auxiliar a Reitoria da Universidade de Brasília, responsável por administrar a infraestrutura do campus, mantendo serviços como limpeza, transporte e comunicação.
4. FGA: Faculdade do Gama - Campus da Universidade de Brasília localizado no Gama.
5. SAA: Secretaria de Administração Acadêmica.
6. UML (*Unified Modeling Language*): Linguagem de modelagem que define representações de um sistema de forma padronizada com o objetivo de facilitar a compreensão.
7. RUP (*Rational Unified Process*): É um modelo de processo unificado de Engenharia de Software derivado da UML criado pela Rational Software Corporation e adquirido pela IBM em 2003. Possui elementos de modelos genéricos para apoiar o desenvolvimento de softwares incentivando a interação e exemplificando boas práticas de projeto e especificação.
8. SIGS: Sistema Inteligente de Gestão de Salas.
9. GPP: Disciplina de Gestão de Portfólios e Projetos de Software.
10. MDS: Disciplina de Métodos de Desenvolvimento de Software.


### 1.4 Referências

SOMMERVILLE, Ian. **Engenharia de Software.** São Paulo: Pearson Prentice Hall. 9ª edição. 2011.

GUEDES, Gilleanes T. A. **UML: uma abordagem prática.** Novatec Editora, 2008.

Universidade de Brasília. **Estatuto e Regimento Geral.** Brasília: Editora UnB, 2011.

### 1.5 Visão Geral

Elaborado de acordo com a metodologia RUP, o *Rational Unified Process*, este documento define o problema a ser resolvido. Descrevendo os requisitos do software, os envolvidos e usuários, a demografia dos mercados, a visão geral do produto e seus recursos.

## 2. Posicionamento

### 2.1 Oportunidade de Negócios
Atualmente a Universidade de Brasília enfrenta a dificuldade de adequar a demanda de disciplinas ofertadas com os recursos físicos - salas e auditórios - disponíveis em cada campus. Atualmente é empregado um processo manual exaustivo por parte dos coordenadores de cada curso, juntamente com a Prefeitura da universidade, a fim de mapear cada turma a sua respectiva sala. Com base nessa realidade, o SIGS visa facilitar este processo de alocação, tornando mais rápida e eficiente a gestão dos espaços físicos.

### 2.2 Descrição do Problema

<table>
  <tr><th> O problema de         </th><td>realizar a gestão de espaços físicos da UnB manualmente</td></tr>
  <tr><th> afeta                 </th><td>os membros responsáveis da Prefeitura, professores e alunos</td></tr>
  <tr><th> cujo impacto é        </th><td>um processo de alocação lento e exaustivo, além de haver choque de horários entre disciplinas diferentes na mesma sala</td></tr>
  <tr><th> uma boa solução seria </th><td>um sistema capaz de automatizar os pedidos de alocação, verificar a disponibilidade de espaços físicos da universidade e identificar disciplinas de horários concorrentes.</td></tr>
</table>
<hr>
<table>
  <tr><th> O problema de</th><td>realizar a gestão de espaços físicos da UnB</td></tr>
  <tr><th> afeta</th><td>os alunos</td></tr>
  <tr><th> cujo impacto é</th><td>disciplinas de um mesmo curso alocadas com uma grande distância entre elas em horários seguidos</td></tr>
  <tr><th>uma boa solução seria</th><td>um sistema capaz de fornecer a informação de proximidade entre as salas, de forma que o responsável pela alocação possa tomar melhores decisões quanto a escolha da sala de uma determinada disciplina.</td></tr>
</table>

### 2.3 Sentença de Posição do Produto

<table>
  <tr><th>Para</th><td>Membros do corpo acadêmico da Universidade de Brasília</td></tr>
  <tr><th>Que</th><td>necessitam automatizar o processo de alocação de salas</td></tr>
  <tr><th>O</th><td>Sistema Inteligente de Gestão de Salas</td></tr>
  <tr><th>Que</th><td>Gerencia os espaços físicos da Universidade</td></tr>
  <tr><th>Diferente do</th><td>Sistema de Alocação de Salas - SAS-FGA</td></tr>
  <tr><th>Nosso produto</th><td>Gerencia as salas reservadas na Universidade, com base nos departamentos e cursos existentes, agrupando-as por região de forma a minimizar a distância entre as as salas das turmas de um mesmo curso.</td></tr>

</table>

## 3. Descrições dos Envolvidos e dos Usuários

### 3.1 Resumo dos Envolvidos

| Nome                           | Descrição                                                                 | Responsabilidades                                                                |
|--------------------------------|---------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| Clientes               | Membros do corpo Acadêmico da UnB | Acompanhar o andamento do projeto e disponibilizar informações sobre o mesmo.    |
| Coaches                        | Alunos da UnB monitores  das disciplinas  de GPP e de MDS.                | Ajudar com as dificuldades  impostas à equipe de gestores e desenvolvedores. |
| Equipe de  Desenvolvimento     | Equipe de alunos da UnB  de Métodos de  Desenvolvimento  de Software.    | Planejar, desenvolver e  implementar o sistema.                                     |
| Equipe de Gestores  de Projeto | Equipe de alunos da UnB  de Gestão de Portfólios  e Projetos de Software. | Planejar, desenvolver e gerenciar o projeto.                 |

### 3.2 Resumo dos Usuários

|    Nome    |      Descrição      |                                   Responsabilidades                                  |       Envolvido      |
|:----------:|:-------------------:|:------------------------------------------------------------------------------------:|:--------------------:|
| Assistente Administrativo | Operador do sistema no âmbito da Prefeitura | Responsável pela alocação de salas nos espaços comuns da faculdade. | Symone Rodrigues Jardim |
| Auxiliar do Departamento | Funcionário do Departamento designado para gerenciar as salas | Responsável pela alocação de salas pertencentes ao seu departamento para disciplinas ofertadas para qualquer curso do respectivo departamento. | Symone Rodrigues Jardim |
| Coordenador | Coordenadores de Curso | Responsável pela alocação de salas no espaço do próprio Departamento do Curso e solicitação de reservas no espaço comum da Universidade. | Symone Rodrigues Jardim |
| Usuário Comum | Usuário sem acesso ao sistema | Solicitar o cadastro ao sistema | Symone Rodrigues Jardim |


### 3.3 Perfis dos Envolvidos

##### 3.3.1 Clientes
<table>
  <tr>
    <td><b>Representantes</b></td>
    <td>Symone Rodrigues Jardim</td>
  </tr>
  <tr>
    <td><b>Descrição</b></td>
    <td>Professora do Curso de Design da Universidade de Brasília e Diretora de Inovação e Estratégia no Ensino de Graduação (DIEG) que está familiarizada com alocações de sala.</td>
  </tr>
  <tr>
    <td><b>Tipo</b></td>
    <td>Cliente que requisitou o projeto.</td>
  </tr>
  <tr>
    <td><b>Responsabilidades</b></td>
    <td>Observar e validar o andamento do software, disponibilizar informações sobre o processo de alocação de sala na UnB.</td>
  </tr>
  <tr>
    <td><b>Critérios de Sucesso</b></td>
    <td>Receber um software que faça de maneira automatizada a alocação das salas e permita o gerenciamento destas.</td>
  </tr>
  <tr>
    <td><b>Envolvimento</b></td>
    <td>Alto.</td>
  </tr>
  <tr>
    <td><b>Comentários</b></td>
    <td></td>
  </tr>
</table>

##### 3.3.2 Coaches
<table>
  <tr>
    <td><b>Representantes</b></td>
    <td>Sabryna de Sousa Pessoa<br>Vitor Barbosa de Araújo</td>
  </tr>
  <tr>
    <td><b>Descrição</b></td>
    <td>Coaches responsáveis pela equipe de GPP e MDS.</td>
  </tr>
  <tr>
    <td><b>Tipo</b></td>
    <td>Graduandos da Universidade de Brasília no curso de Engenharia de Software, aos quais exercem o cargo de monitora das disciplinas de Gestão de Portfólios e Projetos de Software e Métodos de Desenvolvimento de Software, respectivamente.</td>
  </tr>
  <tr>
    <td><b>Responsabilidades</b></td>
    <td>Observar e auxiliar ambas as equipes do projeto na questão de dúvidas e dificuldades no andamento do mesmo.</td>
  </tr>
  <tr>
    <td><b>Critérios de Sucesso</b></td>
    <td>Ajudar as equipes na conquista de conclusão do projeto.</td>
  </tr>
  <tr>
    <td><b>Envolvimento</b></td>
    <td>Médio.</td>
  </tr>
  <tr>
    <td><b>Comentários</b></td>
    <td></td>
  </tr>
</table>

#### 3.3.3 Equipe de Desenvolvedores
<table>
  <tr>
    <td><b>Representantes</b></td>
    <td>Ateldy Borges Brasil Filho<br>
    Bruno Matias Casas<br>
    Carlos Enrique Rodrigues Aragon<br>
		Daniel Marques Rangel<br>
		Francisco Wallacy Coutinho Braz<br>
		Iasmin Santos Mendes<br>
		Rodrigo Dadamos Lopes da Silva<br>
    </td>
  </tr>
  <tr>
    <td><b>Descrição</b></td>
    <td>Desenvolvedores do Projeto</td>
  </tr>
  <tr>
    <td><b>Tipo</b></td>
    <td>Graduandos de Engenharia de Software na Universidade de Brasília, matriculados na disciplina de Métodos de Desenvolvimento de Software.</td>
  </tr>
  <tr>
    <td><b>Responsabilidades</b></td>
    <td>Projetar a aplicação, documentar a estrutura do software, programar os recursos definidos e realizar testes de implementação.</td>
  </tr>
  <tr>
    <td><b>Critérios de Sucesso</b></td>
    <td>Entregar aplicação no prazo para a Universidade de Brasília e aumentar experiência na área de desenvolvimento de software.</td>
  </tr>
  <tr>
    <td><b>Envolvimento</b></td>
    <td>Alto.</td>
  </tr>
  <tr>
    <td><b>Comentários</b></td>
    <td></td>
  </tr>
</table>

#### 3.3.4 Equipe de Gestores
<table>
  <tr>
    <td><b>Representantes</b></td>
    <td>Caio Felipe Dias Nunes<br>
	  Gesiel dos Santos Freitas<br>
	  João Paulo Busche da Cruz<br>
	  Lucas Andrade Oliveira<br>
	  Vinícius da Silva Carvalho<br>
	  Vinicius Pinheiro da Silva Corrêa<br>
    </td>
  </tr>
  <tr>
    <td><b>Descrição</b></td>
    <td>Gestores do Projeto.</td>
  </tr>
  <tr>
    <td><b>Tipo</b></td>
    <td>Graduandos de Engenharia de Software na Universidade de Brasília, matriculados na disciplina de Gestão de Portfólios e Projetos de Software.</td>
  </tr>
  <tr>
    <td><b>Responsabilidades</b></td>
    <td>Efetuar todo o planejamento do projeto, projetar a aplicação, programar os recursos definidos do projeto e gerenciar a equipe de desenvolvedores, escopo, custos, riscos e requisitos.</td>
  </tr>
  <tr>
    <td><b>Critérios de Sucesso</b></td>
    <td>Entregar aplicação no prazo para a Universidade de Brasília e aumentar experiência na área de desenvolvimento de software e gestão de projeto.</td>
  </tr>
  <tr>
    <td><b>Envolvimento</b></td>
    <td>Alto.</td>
  </tr>
  <tr>
    <td><b>Comentários</b></td>
    <td></td>
  </tr>
</table>

### 3.4 Perfil dos Usuários

#### 3.4.1 Assistente Administrativo

| **Representante** | Symone Rodrigues Jardim |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| **Descrição** | Responsável atual pelo processo de alocação e gerenciamento das salas comuns dentro do Campus Darcy Ribeiro. |
| **Tipo** | Assistente Administrativo que atua na Prefeitura da Universidade |
| **Responsabilidades** | Gerenciar a reserva de salas no espaço comum da Universiade, avaliando e aprovando as solicitações de cada Coordenador de curso.  |
| **Critérios de Sucesso**  | Obter um software resultante capaz de automatizar o processo de alocação de salas, prevenindo choques de horários e longas distâncias entre salas do mesmo curso. |
| **Envolvimento** | Usuário final do sistema. |
| **Produtos Liberados** | - Relação de disponibilidade das salas; <br> - Informações técnicas de cada sala; <br> - Relatório de Disciplinas Alocadas com suas respectivas salas.|
| **Comentários** | |

#### 3.4.2 Coordenador

| **Representante** | Symone Rodrigues Jardim |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| **Descrição** | Responsável pela listagem das disciplinas de seu respectivo curso, contendo a relação de demanda, horários e necessidades de cada disciplina. |
| **Tipo** | Mestres e Doutores que lecionam na universidade e atuam no cargo de Coordenador de Curso, além de seus respectivos assistentes. |
| **Responsabilidades** | Fornecer as informações necessárias para a alocação de cada turma, caso necessário, solicitar a reserva de salas no espaço comum da faculdade.|
| **Critérios de Sucesso**  | Obter um software resultante capaz de automatizar o processo de alocação de salas, prevenindo choques de horários e longas distâncias entre salas do mesmo curso. |
| **Envolvimento** | Usuário final do sistema. |
| **Produtos Liberados** | Solicitação contendo as informações necessárias para alocar as disciplinas do seu respectivo curso. |
| **Comentários** |  |

### 3.5 Principais Necessidades dos Usuários ou dos Envolvidos

| Necessidade | Prioridade | Preocupação | Solução Atual | Solução Proposta |
| ----------- | ---------- | ----------- | ------------- | ---------------- |
| Reservar Sala | Alta |  Choque de horário entre disciplinas; Curso prioritário sob determinadas salas; Período de expiração da reserva para evitar a inutilização dos espaços físicos; Disciplinas comuns podem ter mais de um curso associado a mesma turma. | Verificação manual do mapa de sala elaborado para o semestre. | - Categorizar as salas entre disponíveis e ocupadas, de forma que as salas já ocupadas em determinado horário não sejam dispostas para o usuário escolher; <br> - Controle temporal sobre o período letivo; <br> - Permitir ao Coordenador associar cursos diferentes a uma determinada turma, além do seu próprio.|
| Minimizar a distância percorrida pelo aluno entre as trocas de sala | Alta | Manter as aulas de um mesmo curso, preferencialmente, a no máximo 1km de distância das outras aulas do mesmo curso. | Não possui | Agrupar as salas com base em seus respectivos prédios e departamentos, além de segregar o espaço comum da faculdade em Norte e Sul, de forma que um dado curso ofereça todas as suas disciplinas somente em uma dessas regiões. |
| Realizar trocas de salas | Média | Caso haja a necessidade, deve ser possível realizar mudanças no quadro de alocações. | A troca é feita pelos próprios professores, sem o conhecimento dos responsáveis, de forma que impossibilita o uso da sala previamente alocada, por esta constar como ocupada nos registros. | O sistema deverá fornecer a possibilidade de realocar uma turma em outra sala a escolha do usuário. |
| Descrição dos recursos contidos em cada Sala | Baixa | Informar as condições e recursos dispostos na sala para garantir, já na alocação, que uma sala contemple as necessidades de uma dada Disciplina. | Não Possui | Disponibilizar ao usuário a possibilidade de descrever cada sala. |


### 3.6 Alternativas e Concorrência

#### 3.6.1 UFSCar - Sistema de Alocação de Salas

Plataforma web desenvolvida pela Secretaria de Informática da Universidade Federal de São Carlos, para consulta e solicitação de horário somente de salas informatizadas. O filtro de busca utiliza o prédio localizado como base para pesquisa e são exibidas informações como código, capacidade, número de computadores e setor responsável.

![UFSCar_SAS](https://raw.githubusercontent.com/wiki/fga-gpp-mds/Grupo---7-GPP-MDS/images/ufscar.png)

#### 3.6.2 Unicampi - Sistema de Reservas de Salas e Recursos

Sistema baseado em um modelo de agenda, o qual permite as secretarias e setores internos a instituição fazerem as reservas de salas, sendo que, cada departamento tem prioridade para alocar determinadas salas, antes destas ficarem a disposição de todas as alas. Professores possuem a possibilidade de realizar a pré-reserva da sala pelo sistema, a qual fica sob pendência de aprovação pelo setor responsável, enquanto que os alunos devem solicitar a reserva na própria secretaria.  Nos horários de 12h às 14h e 18h às 19h, a reserva das salas fica sob prioridade da secretaria para atender as demandas dos alunos quanto a monitoria. Existe no sistema uma classificação das salas quanto a nome, topologia, capacidade, tipo de utilização e prédio. Além de ser possível a solicitação de salas para eventos externos a instituição.

![Unicampi](https://raw.githubusercontent.com/wiki/fga-gpp-mds/Grupo---7-GPP-MDS/images/unicamp.png)

#### 3.6.3 SAEF - Sistema de Acompanhamento de Espaços Físicos

Implantado na Pontífica Universidade Católica do Rio de Janeiro - PUC Rio, o SAEF consiste em uma plataforma Web desenvolvida pela Kogumelo Informática, a qual permite a reserva de salas e auditórios para as aulas da própria instituição, assim como, para eventos paralelos, tendo todo o procedimento para este último caso online.

![SAEF_PUC_RIO](https://raw.githubusercontent.com/wiki/fga-gpp-mds/Grupo---7-GPP-MDS/images/pucRio.png)

#### 3.6.4 SAS-FGA - Sistema de Alocação de Salas

Software desenvolvido diretamente para o contexto da FGA, um dos quatros campus que compõem a Universidade de Brasília, com o intuito de automatizar e simplificar o processo de alocação de salas dentro do campus. O projeto visou dar maior autonomia aos membros do Corpo Acadêmico, retirando a necessidade de aprovação da reserva, ou seja, uma vez que uma sala consta como disponível no sistema é possível reservá-la imediatamente, sem etapas intermediárias. Em termos de usabilidade, o sistema não foi bem contemplado exigindo muitos passos do usuário para executar tarefas simples.

![SAS_FGA](https://raw.githubusercontent.com/wiki/fga-gpp-mds/Grupo---7-GPP-MDS/images/sas_fga.png)

## 4. Visão Geral do Produto

### 4.1 Perspectiva do Produto

O SIGS - Sistema Inteligente de Gestão de Salas irá sistematizar o processo de alocação de salas referente às disciplinas oferecidas pela Universidade de Brasília. De tal forma que, Coordenadores e membros do departamento tenham o controle sobre o mapeamento das salas ocupadas no respectivo departamento, enquanto que as áreas comuns ficam sob jurisdição da Prefeitura da Universidade. O produto fornecerá aos usuários as informações necessárias para melhor gerirem os espaços físicos. Tais informações contemplam disponibilidade da sala, capacidade, topologia, recursos e proximidade de uma dada sala do espaço comum com as salas respectivas de um curso. Assim, têm-se como expectativa facilitar e agilizar o processo de alocação de salas da UnB, além de evitar qualquer inconsistência em relação às salas e horários, como choques de horários entre turmas.

### 4.2 Resumo dos Recursos

| Código |Recurso | Benefício|
|:------:|--------|----------|
| R01 | Sistematização do processo de alocação de salas.| Agiliza o processo de alocação de salas para disciplinas, um processo que atualmente é feito de maneira mecânica, com a utilização de ferramentas como planilhas. Além disso, evita choque de horários entre disciplinas, adequação da capacidade das salas e também de grandes distâncias entre disciplinas de um mesmo curso. |
| R02 | Fornecer um panorama da atual situação das salas referentes às suas respectivas alocações. | Permite uma maior organização uma vez que que o sistema garantirá que não haja nenhum tipo de inconsistência em relação às salas e horários. |

## 5. Requisitos Funcionais

##### Legenda de Prioridades dos Requisitos:

| Prioridade | Característica |
| ---------- | -------------- |
| Alta | Requisito fundamental para o sistema. |
| Intermediária | Requisito importante, mas não é fundamental para o funcionamento do sistema. |
| Baixa | Requisito não fundamental e pouco usado no sistema. |

| Identificador | Nome | Descrição | Prioridade |
|---|---|---|---|
| RF1 | Autenticar Usuário | O Sistema deve solicitar o usuário e autenticar a sessão do mesmo, após a aprovação. | Alta |
| RF2 | Controlar Cadastro  | O Sistema deve autorizar o Assistente Administrativo de editar as informações dos usuários e aprovar seu cadastro. | Intermediária |
| RF3 | Controlar Sala | O Sistema deve permitir o Assistente Administrativo a manter as informações das salas. | Intermedária |
| RF4 | Controlar Turmas | O sistema deve permitir que os usuários possam manter as informações das turmas. | Alta |
| RF5 | Controlar Alocações | O sistema deve permitir que os usuários possam gerenciar as alocações feitas, e que o Assistente Administrativo controle as de espaço comum. |Alta|
| RF6 | Orientar Alocações | O sistema deve permitir que os usuários possam visualizar as alocações e geram seus respectivos relatórios. | Baixa|

## 6. Restrições

* O cadastro de usuários deve ser aprovado pelo Assistente Administrativo;
* Somente a Coordenação de um determinado curso pode gerenciar as salas correspondentes àquele curso.
* Somente o usuário Assistente Administrativo pode gerenciar as salas do espaço comum da Universidade.
* O sistema só funcionará com uma conexão de rede de internet e mantido em um servidor Rails.
* A documentação do sistema será escrita em sua maioria na língua portuguesa, assim restringindo o entendimento da documentação só para pessoas com conhecimento na língua, salvo partes mais técnicas relacionadas diretamente ao código da aplicação.

## 7. Requisitos Não Funcionais

### 7.1 Requisito do Sistema

* O sistema deve estar hospedado em um servidor da mesma linguagem de programação e versão do software, e também ter acesso a uma rede estável para a conexão com os usuários.
* Para acessar a página do servidor é necessário o usuário ter um navegador de internet e conexão com a internet.


### 7.2 Requisito de Desempenho

* O sistema deve ter o tempo de execução e resposta de acordo com a qualidade da conexão de internet, sendo assim, a velocidade de rede irá impactar diretamente o sistema em todas as suas funcionalidades.

### 7.3 Requisito de Design

* O sistema deve ter uma interface organizada e intuitiva suficiente para o uso adequado, tendo também cores indicadoras para diferenciar as distâncias entre salas e ícones para diferenciar cada funcionalidade.

### 7.4 Requisito de Confiabilidade

* O sistema deve evitar o choque de horários de uma determinada sala, tendo como dependência as informações trazidas pela solicitação da alocação de sala.

### 7.5 Requisito de Arquitetura

* O sistema deve seguir a arquitetura MVC (*Model View Controller*) do Ruby on Rails.

### 7.6 Requisito de Usabilidade

* O sistema deve ser responsivo com a interação do usuário, principalmente na parte de formulários e validações, exibindo mensagens de instruções para as devidas correções e preenchimentos.
* O sistema deve exibir uma mensagem alertando o cadastro de turmas as Terças e Quintas pela manhã, por este ser um horário muito concorrido e quem, em geral, implica na superlotação das salas.


### 7.7 Requisito de Suportabilidade

* O sistema deve ser compatível com as versões de navegadores Google Chrome, Mozilla Firefox e Internet Explorer que são compatíveis com HTML5, CSS3 e JavaScript.

### 7.8 Requisito de Segurança

* O sistema deve conter validações para cada campo no formulário a ser preenchido pelo usuário.
* O sistema deve criar uma sessão para o usuário após o mesmo efetuar o login.
* O sistema deve criar níveis de permissão para cada tipo de conta em relação ao acesso a cada funcionalidade.


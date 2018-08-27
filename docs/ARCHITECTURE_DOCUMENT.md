
# Documento de Arquitetura

## Histórico de Revisão

| Data | Versão | Descrição | Autores |
| ---  |  ---   |  ---  |  ---  |
| 26/08/2018 | 0.0.1 | Abertura do documento, tópicos 1, 7, 9| Matheus Gomes |

1. [Introdução]()       
  1.1 [Finalidade]()            
  1.2 [Escopo]()   
  1.3 [Definições, Acrônimos e Abreviaçõespo]()   

2. [Representação da Arquitetura]()

3. [Metas e Restrições de Arquitetura]()  
  3.1 [Ambiente e Ferramentas de Desenvolvimento]()

4. [Visão Lógica]()              

5. [Visão de Processos]()

6. [Visão de Implantação]()

7. [Visão de Implementação]()
    7.1 [Visão Geral]()
    7.2 [Camadas]()              
    7.2.1 [Model]()           
    7.2.2 [View]()             
    7.2.3 [Controller]()             

8. [Tamanho e Desempenho]()

9.  [Referências]()


## 1:   Introdução

### 1.1 Finalidade

Este documento tem como objetivo fornecer uma visão geral da arquitetura que será usada no desenvolvimento do projeto e permitir um maior entendimento do módulo RecomendaFGA, para o aplicativo FGA app, e de como ele irá se comportar e se comunicar com as outras aplicações que compõem o projeto. Ele deve mostrar de forma clara e objetiva as decisões arquiteturais que foram tomadas em relação ao projeto.

### 1.2 Escopo

O RecomendaFGA será um módulo do aplicativo FGA app, este módulo será responsável pela recomendação de lugares próximos a Faculda do Gama, como também avaliar esse lugares por meio de notas. O documento apresentará toda a parte arquitetural para a confecção do software Dr. Down, a fim de tornar claras as características arquiteturais do projeto.

### 1.3 Definições, Acrônimos e Abreviações
- MVC(Model View Controller): Arquitetura de software utilizada em sistemas que desejam separar a modelagem de dados, interface e processamento de requisições em camadas independentes.

## 2: Representação Arquitetural
  O padrão de arquitetura será o MVC que separa a interação entre software e usuário. Existira uma integração entre duas tecnologias, Ruby on Rails 5.2.0 e React Native 2.0.1

### 2.1 Ruby on Rails 5.2.0
  Ruby on Rails é um framework de desenvolvimento de aplicações web escrito na linguagem de programação Ruby. Não apenas para desenvolvimento de aplicações web com Rails é possível construir web APIs. O Rails fará o papel de *Model-Controller*, resgatando informações do banco de dados da aplicação. Uma vez que esses dados são resgatados a *Controller* irá retornar os dados ao frontend, atendendo a requisição do usuário.

### 2.2 React Native
  O React Native é um framawork para desenvolvimento de aplicativos nativos para celular feito com React. Com React Native é possivel criar aplicativos tanto para Android quanto para iOS de forma nativa, ou seja como se fossem escritos para uma plataforma específica. O camada *View* será representada pelo React Native, portanto será responsável por exibir a interface do usuário e fazer requisições a API feita em Ruby on Rails.

## 3:  Requisitos e Restrições Arquiteturais

## 4:   Visão Lógica

## 5:   Visão de Processo

## 6:   Visão de Implantação

## 7:    Visão de Implementação

### 7.1 Visão Geral

A arquitetura utilizada na aplicação é o padrão arquitetural MVC, que é adotada framework Ruby on Rails.

### 7.2 Camadas

#### 7.2.1 Models
É nessa camada que se implementa as classes que serão responsáveis por definir as informações que estarão presentes na tabela de dados (banco de dados) e como esses dados serão acessados , validados , relacionados e etc. Isto é, a model é responsável por conter todas as informações referentes à manipulação de dados.
#### 7.2.2 Views
A camada view é a responsável por formatar as informações e apresentá-las ao usuário de forma organizada.
#### 7.2.3 Controller
É camada controller que fica responsável pelo fluxo do usuário na aplicação. Esta é usada para comunicação com a Model e renderização das Views, com informações procedentes da Model.

## 8:   Tamanho e Desempenho

## 9:  Referências

ARTEFATO: DOCUMENTO DE ARQUITETURA DE SOFTWARE. FUNPAR. Disponível em: <http://www.funpar.ufpr.br:8080/rup/process/artifact/ar_sadoc.htm>. Acesso em: 26 Agosto 2018.

 Rails Framework. UNIVEM. Disponível em:
<https://www.univem.edu.br/compsi/semanati2009/rails.pdf>. Acesso em: 26 Agosto 2018.

TEMPLATE Documento de Arquitetura de Software. Disponível em:
<https://github.com/DroidFoundry/DroidMetronome/wiki/TEMPLATE-Documento-de-Arquitetura-de-Software>. Acesso em: 26 Agosto 2018.

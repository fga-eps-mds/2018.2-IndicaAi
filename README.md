![Ruby Version - 2.5.1](https://img.shields.io/badge/ruby-v2.5.1-blue.svg)
![Rails Version - 5.1.6](https://img.shields.io/badge/rails-v5.1.6-blue.svg)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Build Status](https://travis-ci.org/fga-eps-mds/2018.2-IndicaAi.svg?branch=devel)](https://travis-ci.org/fga-eps-mds/2018.2-IndicaAi)
[![Coverage Status](https://coveralls.io/repos/github/fga-eps-mds/2018.2-IndicaAi/badge.svg?branch=devel)](https://coveralls.io/github/fga-eps-mds/2018.2-IndicaAi?branch=devel)
[![Maintainability](https://api.codeclimate.com/v1/badges/2a2e16ded87b761154aa/maintainability)](https://codeclimate.com/github/fga-eps-mds/2018.2-IndicaAi/maintainability)

# IndicaAi

O IndicaAi é uma API para recomendação dos mais diversos locais próximos ao Campus Gama da UnB. Ele funciona como um microserviço, pelo qual qualquer um que estude, trabalhe ou visite a FGA possa ter acesso por meio do FGA App. A API é desenvolvida na Universidade de Brasília, por alunos do curso de Engenharia de Software dentro das disciplinas de Métodos de Desenvolvimento de Software e Engenharia de Produto de Software.

[Documentação do Projeto](https://fga-eps-mds.github.io/2018.2-IndicaAi/)

## Começando com o IndicaAi

Nós trabalhamos com _containers_ para construção dos ambientes. Para isso é necessário que você tenha o `docker` e o `docker-compose` instalados na sua máquina. Acesse a [Documentação do Docker](https://docs.docker.com/) e veja como instalar esses pacotes no seu computador.

### Ambiente de desenvolvimento

1. Na pasta do projeto, rode o seguinte comando para gerar o _container_ com todas as configurações do projeto:
* `docker-compose build`
1. Depois execute o comando abaixo para subir o servidor:
* `docker-compose up`
1. Em um terminal separado, execute o comando a seguir para rodar as migrações no banco de dados:
* `docker exec recomendafga_web_1 rake db:migrate`
1. No seu navegador, acesse a url `localhost:3000`, assim a aplicação já deverá estar rodando em seu computador.

Se for necessário acessar o terminal do _container_ que roda a aplicação, o seguinte comando pode ser utilizado:
* `docker exec -it recomendafga_web_1 bash`

## Rodando a aplicação com frontend do FGA App

## Como contribuir

Quer contribuir com o nosso projejto? Veja o nosso [Guia de Contribuição](https://github.com/fga-eps-mds/2018.2-IndicaAi/blob/devel/CONTRIBUTING.md).

## Conduta de Código

Acesse o nosso [Código de Conduta](https://github.com/fga-eps-mds/2018.2-IndicaAi/blob/devel/CODE_OF_CONDUCT.md) e saiba como é a nossa política de relacionamento.

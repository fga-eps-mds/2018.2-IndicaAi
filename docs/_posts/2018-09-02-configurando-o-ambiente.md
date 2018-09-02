---
layout: post
title:  "Configurando o Ambiente"
date:   2018-08-28 13:50:39
categories: tutoriais
---

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

FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /indicaAi
WORKDIR /indicaAi

COPY ./indicaAi /indicaAi

RUN bundle install


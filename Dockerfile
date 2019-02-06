FROM elixir:alpine

ENV SERVICE_ROOT /service
ENV SERVICE_USER service

RUN apk --update add --no-cache bash

# install hex package manager
RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR $SERVICE_ROOT

ADD https://raw.githubusercontent.com/articulate/docker-consul-template-bootstrap/master/wait-for-it.sh $SERVICE_ROOT/wait-for-it.sh
RUN chmod a+rx $SERVICE_ROOT/wait-for-it.sh

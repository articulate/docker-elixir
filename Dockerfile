FROM elixir:slim

ENV SERVICE_ROOT /service
ENV SERVICE_USER service

# install hex package manager
RUN mix local.hex --force
RUN mix local.rebar --force

ADD https://raw.githubusercontent.com/articulate/docker-consul-template-bootstrap/master/install.sh /tmp/consul_template_install.sh
RUN bash /tmp/consul_template_install.sh && rm /tmp/consul_template_install.sh

WORKDIR $SERVICE_ROOT

ADD https://raw.githubusercontent.com/articulate/docker-consul-template-bootstrap/master/wait-for-it.sh $SERVICE_ROOT/wait-for-it.sh
RUN chmod a+rx $SERVICE_ROOT/wait-for-it.sh
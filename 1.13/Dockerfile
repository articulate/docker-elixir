FROM elixir:1.13-otp-25-slim

ENV SERVICE_ROOT /service
ENV SERVICE_USER service

ADD https://raw.githubusercontent.com/articulate/docker-consul-template-bootstrap/master/install.sh /tmp/consul_template_install.sh
ADD https://raw.githubusercontent.com/articulate/docker-consul-template-bootstrap/master/wait-for-it.sh /wait-for-it.sh

# install hex package manager
RUN mix local.hex --force && \
  mix local.rebar --force && \
  bash /tmp/consul_template_install.sh && rm /tmp/consul_template_install.sh && \
  groupadd $SERVICE_USER && useradd --create-home --home $SERVICE_ROOT --gid $SERVICE_USER --shell /bin/bash $SERVICE_USER && \
  chmod a+rx /wait-for-it.sh

WORKDIR $SERVICE_ROOT

ENTRYPOINT ["/entrypoint.sh"]

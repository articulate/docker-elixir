# tags=articulate/articulate-elixir:1.11
# syntax=docker/dockerfile:1
FROM elixir:1.11-slim

ENV SERVICE_ROOT /service
ENV SERVICE_USER service

ARG TARGETARCH
ARG AWSCLI_VERSION=2.11.15
ADD --chmod=755 https://github.com/articulate/docker-bootstrap/releases/latest/download/docker-bootstrap_linux_${TARGETARCH} /entrypoint
ADD --chmod=755 https://raw.githubusercontent.com/articulate/docker-bootstrap/main/scripts/docker-secrets /usr/local/bin/secrets
ADD --chmod=755 https://raw.githubusercontent.com/vishnubob/wait-for-it/81b1373f17855a4dc21156cfe1694c31d7d1792e/wait-for-it.sh /wait-for-it.sh

# install hex package manager
RUN mix local.hex --force && \
    mix local.rebar --force && \
    groupadd --gid 1001 $SERVICE_USER && \
    useradd --create-home --home $SERVICE_ROOT --shell /bin/bash --gid 1001 --uid 1001 $SERVICE_USER \
    # TODO: these packages will be removed in an upcoming release
    # if you want them, please copy to your Dockerfile
    && apt-get update -qq \
    && apt-get install --yes --no-install-recommends \
        unzip sudo jq wget curl ca-certificates \
    && apt-get clean && apt-get autoclean && apt-get -y autoremove --purge \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /root/.cache/ \
    && curl -s "https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m)-${AWSCLI_VERSION}.zip" -o /tmp/awscliv2.zip \
    && unzip -d /tmp /tmp/awscliv2.zip \
    && /tmp/aws/install \
    && rm -rf /tmp/aws /tmp/awscliv2 /tmp/awscliv2.zip

WORKDIR $SERVICE_ROOT

ENTRYPOINT [ "/entrypoint" ]

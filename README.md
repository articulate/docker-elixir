# Docker Elixir Images

Base Elixir Docker images.

## What's Included

* [docker-bootstrap](https://github.com/articulate/docker-bootstrap) entrypoint
  for loading environment variables from Consul and Vault.
* [secrets](https://github.com/articulate/docker-bootstrap/blob/main/scripts/docker-secrets)
  to load Docker secrets as environment variables.
* [install_packages](https://github.com/articulate/docker-bootstrap/blob/main/scripts/install_packages)
  to install apt packages.
* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
  for interacting with AWS services.

## Tags

> 🌟 recommended image

* __articulate/elixir:1.13__ 🌟
* articulate/articulate-elixir:1.13
* articulate/articulate-elixir:1.12
* articulate/articulate-elixir:1.11

### articulate/elixir vs articulate/articulate-elixir

`articulate/articulate-elixir` are the legacy Docker images. These run as root and
include additional software not always needed. Use `articulate/elixir` where possible
and install your own software with `install_packages`.

## Creating a new image

The easiest way to create a new image is to copy an existing one and change the
base image. If creating from scratch, the images need the following:

* Everything listed in [What's included](#whats-included)
* `make` for internal tooling.
* A _service_ user and group with a GID and UID of 1001. This should be the default
  user.
* A _/service_ directory as the default working directory.

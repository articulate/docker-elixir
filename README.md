# Docker Elixir Images

> [!WARNING]
> **Deprecated.** These images are no longer built or maintained, and this
> repository is archived. Do not use them for new services; Articulate no longer
> builds new services in Elixir.
>
> Elixir 1.13 is end of life, and the Debian bullseye security packages these
> images install are no longer available, so the images cannot be rebuilt. The
> [published tags](#tags) stay on Docker Hub, frozen at their last successful
> build.

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

* articulate/elixir:1.13
* articulate/articulate-elixir:1.13

### articulate/elixir vs articulate/articulate-elixir

`articulate/articulate-elixir` are the legacy Docker images. These run as root and
include additional software not always needed. `articulate/elixir` runs as a
non-root _service_ user and provides `install_packages` for adding software.

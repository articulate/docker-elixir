# Articulate Elixir Image

Base Elixir image which contains common dependencies used in our organization.

This image is auto-built on pushes/merges to master via the [articulate/articulate-elixir](https://cloud.docker.com/u/articulate/repository/docker/articulate/articulate-elixir) Dockerhub repo.

Currently built tags include:
  - `latest`
  - `1.8`

## To test locally

1. Run `make` to build a `local/articulate-elixir` image locally (this will have the latest version of elixir on it - use the `make build_1_8` to build the `local/articulate-elixir:1.8` image.

2. Change the first line of your `Dockerfile` to be `FROM local/articulate-elixir`.


3. Then `docker-compose build --no-cache && docker-compose up`.

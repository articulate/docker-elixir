# Articulate Elixir Image

Base Elixir image which contains common dependencies used in our organization.

This will (eventually) be published on Dockerhub as part of an automated build.

## To test locally

1. Run `make` to build a `local/articulate-elixir:alpine` image locally
2. Change the first line of your `Dockerfile` to be:

```
FROM local/articulate-elixir:alpine
```

3. Then

```
docker-compose build --no-cache && docker-compose up
```

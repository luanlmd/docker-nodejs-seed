#!/bin/bash

function create-react-app
{
    mkdir app
    docker run --user $(id -u):$(id -g) -it --rm -v $(pwd)/app:/app node:12-slim npx create-react-app /app --typescript
}

function yarn
{
    docker-compose run app yarn "$@"
}

function build
{
    docker build -t docker-react-seed -f docker/prod.Dockerfile .
}

function extract
{
    docker cp $(docker create docker-react-seed):/usr/share/nginx/html build
}

function run
{
    docker run -p -rm 8000:80 docker-react-seed
}

"$@"

#!/bin/bash

function create-react-app
{
    mkdir app
    docker run --user $(id -u):$(id -g) -it --rm -v $(pwd)/app:/app node:12-slim npx create-react-app /app --typescript
}

function bash
{
    docker-compose run app yarn "$@"
}

function yarn
{
    docker-compose run app yarn "$@"
}

function build
{
    docker build -t docker-nodejs-seed -f prod.Dockerfile .
}

function run
{
    docker run -p 80:80 docker-nodejs-seed
}

"$@"

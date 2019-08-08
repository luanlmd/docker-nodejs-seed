# Docker React Seed

Elegant project structure for React development and deploy inside a docker environment

## Create React App

This command will create the app folder and initialize the react app

```bash
./console.sh create-react-app
```

## Run yarn

Run yarn inside the dev container

```bash
./console.sh yarn add whateva
```

## Development build

Just use docker-compose for it

```bash
docker-compose up
```

## Production build

```bash
./console.sh build
```

## Run production build

```bash
./console.sh run
```

## Extract production build for static hosting

This will extract the build from the docker image into the 'build' folder

```bash
./console.sh extract
```

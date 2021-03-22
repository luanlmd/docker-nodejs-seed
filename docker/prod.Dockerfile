FROM node:14-alpine

WORKDIR /app

COPY /app/package.json /app/yarn.lock /app/
RUN yarn install
COPY /app/ /app/
RUN yarn build

FROM nginx:alpine
COPY --from=0 /app/build /usr/share/nginx/html
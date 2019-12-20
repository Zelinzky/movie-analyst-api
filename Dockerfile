FROM node:lts

WORKDIR /usr/src/api

COPY . .

RUN npm ci

EXPOSE 3000

ENTRYPOINT node server.js
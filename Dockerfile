FROM node:10

WORKDIR /usr/src/api

COPY . .

RUN npm ci

EXPOSE 3000

ENTRYPOINT["node", "server.js"]
FROM node:lts-alpine

WORKDIR /usr/src/api

COPY . .

RUN npm ci --production

EXPOSE 3000

ENTRYPOINT node server.js
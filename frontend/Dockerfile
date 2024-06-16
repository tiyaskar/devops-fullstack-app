FROM node:14.17.6-slim as build-stage

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

RUN npm run build

FROM nginx:latest

COPY --from=build-stage /home/node/app/build/ /usr/share/nginx/html

COPY --from=build-stage /home/node/app/nginx.conf /etc/nginx/conf.d/default.conf




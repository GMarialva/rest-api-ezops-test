FROM node:14.21.3-slim

RUN mkdir -p /usr/src/app && chown -R node:node /usr/src/

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

USER node

EXPOSE 3000

CMD ["node", "server/server.js"]
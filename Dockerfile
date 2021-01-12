FROM node:latest

LABEL MAINTAINER=STurton@spartaglobal.com

WORKDIR /usr/src/app

COPY app/ .

RUN npm install

EXPOSE 3000

CMD ["node", "start", "app.js";]

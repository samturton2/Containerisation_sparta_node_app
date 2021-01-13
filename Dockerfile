# Creating micro-services for nodejs front end
FROM node as APP

LABEL MAINTAINER=STurton@spartaglobal.com

WORKDIR /usr/src/app
# path to working directory inside the container

#copy the required dependencies
copy ./app/ . 

FROM node:alpine
# building a multi stage layer

COPY --from=app /usr/src/app /usr/src/app

WORKDIR /usr/src/app

# run the npm install
RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]

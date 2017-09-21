FROM node:latest

RUN mkdir /app

WORKDIR /app

ADD . /app

RUN yarn install

EXPOSE 8080

CMD yarn dev

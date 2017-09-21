FROM node

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN yarn install && yarn dev

EXPOSE 8080

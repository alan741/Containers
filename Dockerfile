FROM node:alpine

LABEL author="Alan Morales"

WORKDIR /home/app

RUN npm install -g @angular/cli

COPY ./package*.json .
RUN npm install

EXPOSE 4200

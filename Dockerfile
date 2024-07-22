FROM node:alpine

LABEL author="Alan Morales"

WORKDIR /var/www
COPY ./package*.json . 

RUN npm install -g @angular/cli

COPY ./package.json .
RUN npm install

RUN rm /home/app/package.json

EXPOSE 4200

FROM node:alpine

LABEL author="Alan Morales"

WORKDIR /var/www
COPY ./package*.json . 

RUN npm install

COPY . .

EXPOSE 4200

ENTRYPOINT [ "npm", "start" ]
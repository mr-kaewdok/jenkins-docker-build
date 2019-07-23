FROM node:lts-alpine as build-stage

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm", "start"]

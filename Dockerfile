FROM node:lts-alpine as build-stage

RUN mkdir -p /app

WORKDIR /app

COPY . .

EXPOSE 80

CMD ["npm", start"]

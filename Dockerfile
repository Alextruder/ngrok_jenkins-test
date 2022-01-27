FROM node:latest

WORKDIR /my-app

COPY my-app/package*.json ./
COPY . ./

RUN npm install

EXPOSE 4000

CMD ["npm", "start"]
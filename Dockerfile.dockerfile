FROM node:16

RUN mkdir /app

WORKDIR /app

COPY jenkins-app/package.json /app

RUN npm install

COPY jenkins-app/ /app

EXPOSE 3000

CMD ["npm","start"]
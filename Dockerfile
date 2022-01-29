
FROM node:16

RUN mkdir /app

WORKDIR /app

COPY my-app/package.json /app

RUN npm install

COPY my-app/ /app

EXPOSE 3000

CMD ["npm","start"]
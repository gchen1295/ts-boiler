FROM node:alpine

WORKDIR /usr/src/app

COPY ./package*.json ./
RUN npm install

COPY . .
RUN npm run tsc

CMD ["npm", "start"]
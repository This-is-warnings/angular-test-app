FROM node:16-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install npm install -g npm@10.2.1

COPY . .

RUN npm install rxjs@^6.5.3

RUN npm run build

EXPOSE 4200

CMD ["npm", "start"]

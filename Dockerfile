FROM node:16-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN npm install rxjs@^6.5.3

RUN npm run build

EXPOSE 4200

CMD ["npm", "start"]
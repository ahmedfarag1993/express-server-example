FROM node:16-alpine

WORKDIR /app

#COPY package.json package-lock.json /app/
COPY package*.json ./
COPY package.json /app

RUN npm ci

COPY . .

#CMD ["npm", "start"]
CMD ["npm", "run", "start"]


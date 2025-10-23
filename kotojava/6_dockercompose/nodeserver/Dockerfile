FROM node:22-alpine

WORKDIR /app
COPY package.json ./
COPY server.js ./

RUN npm install
CMD ["node", "server.js"]

EXPOSE 8080

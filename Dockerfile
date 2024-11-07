FROM node:14

WORKDIR /app

COPY package*.json yarn.lock ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
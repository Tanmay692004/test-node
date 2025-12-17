FROM node:18-alpine
run mkdir /app
WORKDIR /app
env path /app/node_modules/.bin:$PATH

COPY package*.json ./app
RUN npm install
COPY . ./app
EXPOSE 4000
CMD ["npm", "start"]

FROM node:8

WORKDIR /app

COPY . .

RUN npm install

ENV CONTENT_API_URL http://localhost:3001

EXPOSE 3000

CMD ["npm", "start"]
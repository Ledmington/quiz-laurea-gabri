FROM node:18.9.0-alpine3.15
ENV SERVER_PORT 3000
EXPOSE 3000
WORKDIR /app
COPY . .
RUN npm install
CMD npm start
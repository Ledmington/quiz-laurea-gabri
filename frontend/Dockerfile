FROM node:18.9.0-alpine3.15
EXPOSE 80
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN npm -g install static-server
CMD static-server dist -p 80
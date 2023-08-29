FROM alpine

WORKDIR /app

COPY test.js .

RUN apk add --update nodejs
RUN apk add --update npm
RUN npm install express
RUN npm install -g localtunnel

CMD node test.js
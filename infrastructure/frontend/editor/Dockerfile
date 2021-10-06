#
# Build stage
#
FROM node:14.16.0-alpine3.12 AS build
COPY . /home/app
RUN cd /home/app && npm i && npm run gh-pages

#
# Package stage
#
FROM node:14.16.0-alpine3.12
WORKDIR /usr/local/lib
COPY --from=build /home/app/gh-pages /usr/local/lib/public
COPY ./server.js /usr/local/lib/server.js
RUN cd /usr/local/lib && npm install express body-parser --save
EXPOSE 3000
ENTRYPOINT ["node", "/usr/local/lib/server.js"]
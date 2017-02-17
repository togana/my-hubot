FROM node:7.5.0-alpine
WORKDIR /hubot
EXPOSE 9999
COPY package.json /hubot
RUN npm install
COPY . /hubot
CMD ["bin/hubot", "--adapter", "slack"]

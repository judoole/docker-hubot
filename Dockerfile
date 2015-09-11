FROM node:0.12

MAINTAINER Ole Christian Langfjæran <judoole@gmail.com>

RUN npm install -g coffee-script
RUN mkdir /hubot
WORKDIR /hubot

ONBUILD COPY package.json /hubot/
ONBUILD RUN npm install
ONBUILD COPY . /hubot

ENV PATH $PATH:/hubot/node_modules/.bin
ENV NODE_PATH=$NODE_PATH:./node_modules
CMD ["hubot"]

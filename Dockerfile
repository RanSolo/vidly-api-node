FROM node:12
WORKDIR /app
ADD . /app

RUN npm install
RUN npm install -g jenkins
RUN npm install -g winston
RUN npm install -g docker

EXPOSE 3900
CMD npm start

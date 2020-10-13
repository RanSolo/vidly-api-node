FROM node:12
WORKDIR /app
ADD . /app
RUN npm rebuild

RUN npm install -g jenkins
RUN npm install -g winston
EXPOSE 3000
CMD npm start

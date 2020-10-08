FROM node:12
WORKDIR /app
ADD . /app
RUN npm install
RUN npm install -g jenkins
EXPOSE 3000
CMD npm start

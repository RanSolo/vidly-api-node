FROM node:12
WORKDIR /app
ADD . /app
RUN npm uninstall bcrypt
RUN npm install

RUN npm install -g jenkins
RUN npm install -g winston
EXPOSE 3000
CMD npm start

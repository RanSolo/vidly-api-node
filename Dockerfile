FROM node:12
WORKDIR /app
RUN npm build
RUN npm install -g jenkins
RUN npm install -g winston
EXPOSE 3000
CMD npm start

FROM node:12
USER root
WORKDIR /app
ADD . /app 
RUN npm install
USER jenkins
EXPOSE 3900
CMD npm start

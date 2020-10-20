FROM node:12

WORKDIR /app
ADD . /app 
RUN npm install
EXPOSE 3900
CMD npm start

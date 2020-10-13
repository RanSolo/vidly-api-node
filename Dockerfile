FROM node:12
WORKDIR /app
ADD . /app

RUN npm install
RUN npm uninstall bcryptjs
RUN npm uninstall bcrypt
RUN npm uninstall bcrypt-pbkdf
RUN npm install bcryptjs -g
RUN npm install isarray
RUN npm install -g jenkins
RUN npm install -g winston
EXPOSE 3000
CMD npm start

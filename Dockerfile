FROM node:12
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3900
RUN wget "https://raw.githubusercontent.com/RanSolo/bash_profile/main/utility/.profile"
RUN echo "export \'source ~/.profile.1\'' >> ~/.profile"
CMD npm start

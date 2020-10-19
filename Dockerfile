FROM node:12
WORKDIR /app
ADD . /app
#RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#	&& tar xzvf docker-17.04.0-ce.tgz \
#	&& mv docker/docker /usr/local/bin \
#	&& rm -r docker docker-17.04.0-ce.tgz
RUN npm install
#RUN npm install -g jenkins
RUN npm install -g winston

EXPOSE 3900
CMD npm start

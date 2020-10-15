FROM node:12
WORKDIR /app
RUN npm build
RUN npm install -g jenkins
RUN npm install -g winston
USER root
RUN apt-get update \
	&& apt-get install -y sudo \
	&& rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers


#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
# RUN commands

EXPOSE 3000
CMD npm start

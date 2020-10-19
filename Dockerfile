FROM jenkins/jenkins:lts
USER root

RUN mkdir -p /tmp/download && \
	curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download && \
	rm -rf /tmp/download/docker/dockerd && \
	mv /tmp/download/docker/docker* /usr/local/bin/ && \
	rm -rf /tmp/download && \
	groupadd -g 999 docker && \
	usermod -aG staff,docker jenkins

USER jenkins

#FROM node:12
#WORKDIR /app
#ADD . /app

#RUN npm install
#RUN npm install -g jenkins
#RUN npm install -g winston
#RUN npm install -g docker

#EXPOSE 3900
#CMD npm start

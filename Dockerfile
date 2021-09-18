FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get install -y \
	nodejs \
	python3 \
	build-essential

COPY ./ /opt/microservice/
WORKDIR /opt/microservice/

RUN npm install

EXPOSE 80
CMD npm run start

#FROM alpine:3.11
#
#RUN apk add --update \
#	nodejs \
#	npm \
#	python3 \
#	make \
#	build-base
#
#RUN ln -sf python3 /usr/bin/python
#
#COPY ./ /opt/microservice/
#WORKDIR /opt/microservice/
#
#RUN npm install
#
#EXPOSE 80
#CMD npm run start

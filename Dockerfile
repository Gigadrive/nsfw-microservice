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

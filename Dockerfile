FROM  ubuntu:latest

MAINTAINER himanshu

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update\

RUN apt-get install -y nodejs

RUN apt-get isntall -y npm

RUN npm isntall -g http-server

ADD /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/inedx.html

CMD ["http-server","-s"]

FROM ubuntu:14.04

MAINTAINER Robby Prima Suherlan <robbiejobs@gmail.com>

RUN apt-get update && apt-get install haproxy nginx -y

ADD ./bootstrap.sh /bootstrap.sh

RUN chmod +x /bootstrap.sh

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/bootstrap.sh"]

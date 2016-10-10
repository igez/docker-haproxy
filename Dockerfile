FROM ubuntu:14.04

MAINTAINER Robby Prima Suherlan <robbiejobs@gmail.com>

RUN apt-get update && apt-get install haproxy -y

RUN sed -i "s/ENABLED=0/ENABLED=1/" /etc/default/haproxy

ADD ./bootstrap.sh /bootstrap.sh
ADD ./conf/haproxy.cfg /etc/haproxy/haproxy.cfg

RUN chmod +x /bootstrap.sh

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/bootstrap.sh"]

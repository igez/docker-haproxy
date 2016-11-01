FROM ubuntu:16.04

MAINTAINER Robby Prima Suherlan <robbiejobs@gmail.com>

RUN apt-get update \
    && apt-get install software-properties-common \
    && add-apt-repository ppa:vbernat/haproxy-1.6 \
    && apt-get update \
    && apt-get install haproxy -y

ADD ./bootstrap.sh /bootstrap.sh

RUN chmod +x /bootstrap.sh

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/bootstrap.sh"]

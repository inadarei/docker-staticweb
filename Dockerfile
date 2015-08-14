FROM busybox:ubuntu-14.04
MAINTAINER Irakli Nadareishvili

RUN mkdir /www
VOLUME /www
EXPOSE 8000

ENTRYPOINT ["/sbin/httpd", "-f", "-p", "8000", "-h", "/www"]

# Standard clean-up for the baseimage. @see: http://phusion.github.io/baseimage-docker/
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

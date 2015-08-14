FROM busybox:ubuntu-14.04
MAINTAINER Irakli Nadareishvili

RUN mkdir /www
VOLUME /www
EXPOSE 8000

ENTRYPOINT ["/sbin/httpd", "-f", "-p", "8000", "-h", "/www"]

# Standard clean-up to remove possible junk.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

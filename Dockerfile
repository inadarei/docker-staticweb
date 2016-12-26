FROM busybox:1.26
MAINTAINER Irakli Nadareishvili

RUN adduser -s /bin/false -u 7007 -D webserver \
 && mkdir /www

VOLUME /www
EXPOSE 8000

ENTRYPOINT ["/bin/httpd", "-f", "-p", "8000", "-u", "7007", "-h", "/www"]

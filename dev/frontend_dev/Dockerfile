FROM localhost:5000/my-ubuntu:16.04

MAINTAINER Olaolu Akinsete version:0.1

RUN apt-get update

COPY src/ /var/www/html

VOLUME ./src:var/www/html

EXPOSE 3000

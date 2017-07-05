FROM localhost:5000/my-ubuntu:16.04

LABEL vendor="Olaolu Akinsete"
LABEL com.projectb.version="0.0.1-beta"
LABEL Description="This is one of the frontend boxes for A/B testing"

MAINTAINER Olaolu Akinsete version:0.1

RUN apt-get update

COPY build/ /var/www/html

#VOLUME var/www/html

#
RUN echo 'setting environment variables'

# Persisted environment variables for this container
ENV container-type=frontend language=js
ENV framework=reactjs
ENV environment=dev version="0.0.1-beta"

EXPOSE 80 3000


# HEALTHCHECK --interval=5m --timeout=3s \
#   CMD curl -f http://localhost:3000/ || exit 1

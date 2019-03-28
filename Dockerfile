ARG DEBIAN_RELEASE
FROM debian:$DEBIAN_RELEASE

LABEL maintainer "open.source@opensourcery.uk"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get dist-upgrade -y \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

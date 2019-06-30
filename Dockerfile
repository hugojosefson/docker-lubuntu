FROM ubuntu:19.04
MAINTAINER Hugo Josefson <hugo@josefson.org>

RUN echo Packages last updated 2019-06-30.

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --purge -y && apt-get autoremove --purge -y && apt-get clean
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y sudo lubuntu-desktop

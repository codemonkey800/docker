# Inspiration from https://github.com/johnjelinek/csgoserver-docker/blob/master/Dockerfile
FROM debian:jessie-slim
MAINTAINER Jeremy Asuncion <jeremyasuncion808@gmail.com>

ENV SERVER l4d2server

EXPOSE 27015/tcp
EXPOSE 27015/udp

ADD scripts /tmp

RUN bash /tmp/install-deps.sh
RUN bash /tmp/setup.sh $SERVER && rm /tmp/*

VOLUME ["/home/gsm"]
WORKDIR /home/gsm
USER gsm
RUN ./server auto-install

ENTRYPOINT ["/home/gsm/server"]


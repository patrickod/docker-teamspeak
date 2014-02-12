FROM ubuntu:latest
MAINTAINER Patrick O'Doherty <p@trickod.com>

RUN apt-get -y install curl

ENV TEAMSPEAK_VERSION 3.0.10.3
RUN cd /opt && curl -sL http://dl.4players.de/ts/releases/3.0.10.3/teamspeak3-server_linux-amd64-${TEAMSPEAK_VERSION}.tar.gz | tar xz

ENTRYPOINT /opt/teamspeak3-server_linux-amd64/ts3server_minimal_runscript.sh

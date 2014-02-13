FROM ubuntu:12.10
MAINTAINER Patrick O'Doherty <p@trickod.com>

RUN apt-get -y install curl
EXPOSE 9987/udp

ENV TEAMSPEAK_VERSION 3.0.10.3
RUN cd /opt && curl -sL http://dl.4players.de/ts/releases/${TEAMSPEAK_VERSION}/teamspeak3-server_linux-amd64-${TEAMSPEAK_VERSION}.tar.gz | tar xz

ENTRYPOINT /opt/teamspeak3-server_linux-amd64/ts3server_minimal_runscript.sh

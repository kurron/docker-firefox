FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENTRYPOINT ["firefox", "https://www.youtube.com/html5"]

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt install --yes firefox libpulse0 pulseaudio ubuntu-restricted-extras

USER powerless

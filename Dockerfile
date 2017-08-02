FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENTRYPOINT ["firefox"]

USER root

RUN apt-get update && apt install --yes firefox libpulse0 pulseaudio

USER powerless

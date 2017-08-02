#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag kurron/firefox-local:latest kurron/docker-firefox:latest
docker tag kurron/firefox-local:latest kurron/docker-firefox:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-firefox:latest
docker push kurron/docker-firefox:${UNIXTIME}


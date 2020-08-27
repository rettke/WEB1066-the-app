#!/usr/bin/env bash
set -e

echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin
docker tag $DOCKER_LOGIN/monolithic-shop:latest
docker push $DOCKER_LOGIN/monolithic-shop:latest
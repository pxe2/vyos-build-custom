#!/usr/bin/env bash

VYOS_BRANCH=current
IMAGE=vyos-builder

# Removing old and pulling new images
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)
docker build -t $IMAGE .
sudo docker run --privileged -v $PWD/images:/root --name=vyos_node_builder -t $IMAGE /bin/sh -c '/root/scripts/build-it.sh'

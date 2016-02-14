#!/usr/bin/env bash

IMAGE="$1"

if [[ -e ~/docker/$IMAGE.tar ]]; then 
  docker load -i ~/docker/$IMAGE.tar 
else 
  docker build -t darren/$IMAGE .
  mkdir -p ~/docker; docker save darren/$IMAGE > ~/docker/$IMAGE.tar
fi

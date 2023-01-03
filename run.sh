#!/bin/bash
# sh build.sh

docker rm --force "tensorboard"

docker run \
    -d \
    -v /mnt/c/Users/dgn/Documents/GitHub/dd/tensorboard-docker/training \
    -p 6006:6006 \
    --restart always \
    # -w "/app/" \
    --name "tensorboard" \
    schafo/tensorboard

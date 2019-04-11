#!/bin/bash -e

shopt -s extglob

echo "Building Docker container for scala builds in drone.io"

TAG="jopecko/drone-scala:8u202b08_jdk_unlimited-alpine"
docker build -t $TAG .
test $? -eq 0 && docker push $TAG

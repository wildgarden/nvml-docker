#!/bin/bash
set -e

repo=nvml
name=ubuntu:16.04
tag=${repo}/${name}

echo $http_proxy
echo $https_proxy

if [ -n $http_proxy ]; then echo http_proxy; BUILD_ARGS=" --build-arg http_proxy=$http_proxy "; fi
if [ -n $https_proxy ]; then echo https_proxy; BUILD_ARGS="$BUILD_ARGS --build-arg https_proxy=$https_proxy "; fi

docker build -t $tag $BUILD_ARGS .


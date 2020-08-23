#!/usr/bin/env bash
set -eu

docker run --rm -it \
  -e "UNITY_VERSION=$UNITY_VERSION" \
  -e "TEST_PLATFORM=linux" \
  -e "WORKDIR=/root/project" \
  -v "/$(pwd):/root/project" \
  -w '//root/project/docker' \
  gableroux/unity3d:$UNITY_VERSION \
  bash ./create-license-file.sh
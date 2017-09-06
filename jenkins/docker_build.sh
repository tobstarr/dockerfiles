#!/bin/bash
set -e -o pipefail

if [[ -z $VERSION ]]; then
  VERSION=$(curl -s http://mirrors.jenkins.io/war/  | grep '[DIR]' | grep -v latest | tail -n 1 | grep -o 'href=.*' | cut -d '"' -f 2 | sed -s 's/\///g')
fi

if [[ -z $VERSION ]]; then
  echo "unable to get image"
  exit 1
fi

IMAGE=tobstarr/jenkins:${VERSION}
docker build --build-arg JENKINS_VERSION=${VERSION} -t ${IMAGE} .
docker push ${IMAGE}

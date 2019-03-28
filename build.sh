#!/bin/bash
set -euo pipefail

DEBIAN_RELEASE=$1
REGISTRY_IMAGE=$2
IMAGE_TAG=${3:-$DEBIAN_RELEASE}

docker build --rm -t opensourcery/debian:${DEBIAN_VERSION} --build-arg DEBIAN_RELEASE=${DEBIAN_RELEASE} .
docker push ${REGISTRY_IMAGE}:${IMAGE_TAG}

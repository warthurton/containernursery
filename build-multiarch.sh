#!/bin/bash

docker buildx build --push --platform linux/amd64,linux/arm64 --tag ghcr.io/warthurton/containernursery:multiarch .
docker buildx build --push --platform linux/amd64 --tag ghcr.io/warthurton/containernursery:latest .
# regctl image copy ghcr.io/warthurton/containernursery:multiarch ghcr.io/warthurton/containernursery:dev 
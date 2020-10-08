#!/bin/bash

set -e

for V in "2.3.7"; do
  docker build -t "coingaming/nix:$V" -f "./Dockerfile-nix:$V" .
  docker push "coingaming/nix:$V"
done

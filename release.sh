#!/bin/bash

set -e

for V in "2.3.7"; do
  docker build -t "heathmont/nix:$V" -f "./Dockerfile-nix:$V" .
  docker push "heathmont/nix:$V"
done

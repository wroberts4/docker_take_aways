#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t my_dind ${BASE}

docker run --rm -it --privileged my_dind docker buildx version

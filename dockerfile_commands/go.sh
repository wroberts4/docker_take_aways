#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t my_image --build-arg VERSION=3.0.1 ${BASE}

docker run --rm -it my_image

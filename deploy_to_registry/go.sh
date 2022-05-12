#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo -t gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo:1.0.0 .
docker push gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo
docker push gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo:1.0.0
docker run --rm -it gitlab.ssec.wisc.edu:5555/aeri/aeri_armory/docker_demo:1.0.0 cat /hello.txt

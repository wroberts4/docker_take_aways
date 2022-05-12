#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker volume create my_volume
docker run --rm -it -v my_volume:/input centos:7 ls /input
docker volume rm my_volume

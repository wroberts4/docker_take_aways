#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

container_exists() {
    docker container ls --format "{{.Names}}" | grep "${1}"
}


docker run --rm -it --name my_centos -d --log-opt max-size=20m --log-opt max-file=3 centos:7 bash -c 'for i in {1..10}; do echo $i; sleep 1; done'
sleep 3
docker logs --since 1s --until 2s -f my_centos

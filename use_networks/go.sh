#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker network create my_network
docker run --rm -it -p 1234:80 -d --name my_nginx --network my_network nginx:1.20.2
docker inspect my_network | grep gateway
# Set the ip to the above address.
docker run --rm -it --network my_network centos:7 curl '10.89.1.1:1234'
docker stop my_nginx
docker network rm my_network

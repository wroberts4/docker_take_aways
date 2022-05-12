#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

echo ls inside the base centos:7 image
docker run --rm -it centos:7 ls
echo

echo build the docker image
docker build -t my_image .
echo

echo run the ls command inside your image
docker run --rm -it my_image ls
echo

echo run the pwd command inside your image
docker run --rm -it my_image pwd
echo

echo cat hello.txt
docker run --rm -it my_image cat hello.txt
echo

echo list the python3 version insalled
docker run --rm -it my_image python3 --version
echo

echo make a file inside the container and make another container. Note that the file is gone!
docker run --rm -it my_image touch /test.txt
docker run --rm -it my_image ls /test.txt

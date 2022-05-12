#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t my_image --format docker ${BASE}

docker run --rm -it my_image pip list | grep xarray
docker run --rm -it my_image pip list | grep dask
docker run --rm -it my_image ls /
echo This should fail!
docker run --rm -it my_image mamba --version

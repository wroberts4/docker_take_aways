#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t my_jupyterlab .

docker run --rm -it -p 1234:1234 -v ${PWD}:${PWD} jupyter/scipy-notebook bash -c "jupyter lab --allow-root --notebook-dir=${PWD} --ip='*' --port=1234 --no-browser"

docker run --rm -it -p 1234:1234 -v ${BASE}/saved_notebooks:/work/saved_notebooks jupyter/scipy-notebook bash -c "jupyter lab --allow-root --notebook-dir=/work --ip='*' --port=1234 --no-browser"

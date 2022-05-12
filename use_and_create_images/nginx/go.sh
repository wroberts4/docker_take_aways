#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker run --rm -it -p 1234:80 -v ${BASE}/my.conf:/etc/nginx/conf.d/my.conf nginx:1.20.2

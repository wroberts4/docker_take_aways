#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build --no-cache -t my_image --secret id=aws,src=${BASE}/password.txt ${BASE}
echo This should fail!
docker run --rm -it my_image ls /root/.aws/credentials

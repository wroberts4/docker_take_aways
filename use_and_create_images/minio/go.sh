#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker run --rm -it -p 1234:1234 -p 1235:1235 -v ${BASE}/buckets:/buckets minio/minio:RELEASE.2022-05-08T23-50-31Z server /buckets --address ":1234" --console-address ":1235"

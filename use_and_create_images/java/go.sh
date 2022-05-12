#!/bin/bash

# This is the absolute path of this file on disk.
BASE="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${BASE}

docker build -t my_java .

docker run --rm -it -p 25565:25565 my_java java -Xmx1024M -Xms1024M -jar minecraft_server.1.18.2.jar nogui

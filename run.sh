#!bin/bash
docker run \
    -ti \
    -d \
    --name mongodb \
    -v ~/mdata:/data/db \
    mongodb


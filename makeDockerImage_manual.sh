#!/bin/bash

NAME=$1
VOLUME=$2
CONTAINER=$3
PORT=$4

docker run --cap-add=NET_ADMIN -it --name $NAME -p $PORT:$PORT -v $VOLUME:/root/Volume $CONTAINER /bin/bash

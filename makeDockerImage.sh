#!/bin/bash

dockerRun() 
{
docker run --cap-add=NET_ADMIN -it --name ${1} -p ${2}:${2} -v ${3}:/root/Volume ${4} /bin/bash
}

echo -en "\033[36m"***** Make New Docker Image *****"\033[0m\n"
echo -en "\033[32m"New Container Name *e.g My_ubuntu* : "\033[0m"
read NAME
echo -en "\033[32m"Volume DIR *e.g. ~/WorkSpace/DockerData* : "\033[0m"
read VOLUME
echo -en "\033[32m"Image to Load *e.g. ubuntu:jammy* : "\033[0m"
read IMAGE
echo -en "\033[32m"Port :  *e.g. 80* : "\033[0m"
read PORT

dockerRun $NAME $PORT $VOLUME $IMAGE

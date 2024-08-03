#!/usr/bin/env bash
set -e

if [ "$#" -ne 4 ]; then
    echo "Please provide the necessary arguments!"
    echo "Usage: ./build.sh [IMAGE NAME] [MAJOR VERSION] [MINOR VERSION] [PATCH VERSION]"
    exit -1
fi

docker build -t woohoolabs/$1 -f $1/Dockerfile .

read -p "Do you wish to tag the image 'woohoolabs/$1:$2.$3.$4' (y/n)? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

IMAGE_ID=`docker images -q woohoolabs/$1:latest`

docker tag $IMAGE_ID woohoolabs/$1:$2.$3.$4
docker tag $IMAGE_ID woohoolabs/$1:$2.$3
docker tag $IMAGE_ID woohoolabs/$1:$2
docker tag $IMAGE_ID woohoolabs/$1:latest

read -p "Do you wish to publish the image 'woohoolabs/$1:$2.$3.$4' (y/n)? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

source .env
docker login -u $DOCKER_USERNAME -p$DOCKER_PASSWORD

docker push woohoolabs/$1:$2.$3.$4
docker push woohoolabs/$1:$2.$3
docker push woohoolabs/$1:$2
docker push woohoolabs/$1:latest

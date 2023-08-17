#!/bin/bash

echo "pushing image"

IMAGE="maven_project"


echo "logging in"
docker login -u gaal.peti2@gmail.com -p $PASS


echo "tagging"
docker tag app:2 doruce/learning:$IMAGE.$BUILD_TAG

docker push doruce/learning:$IMAGE.$BUILD_TAG

#!/bin/bash


echo maven_project > /tmp/.auth
echo $BUILD_TAG  >> /tmp/.auth
echo $PASS  >> /tmp/.auth

scp /tmp/.auth 192.168.157.202:/tmp/.auth
scp ./deploy/publish.sh 192.168.157.202:/tmp/publish.sh
ssh 192.168.157.202 "/tmp/publish.sh"

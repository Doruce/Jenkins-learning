#!/bin/bash


echo maven_project > /tmp/.auth
echo $BUILD_TAG  >> /tmp/.auth
echo $PASS  >> /tmp/.auth

scp -i /opt/prod /tmp/.auth 192.168.157.202:/tmp/.auth
scp -i /opt/prod ./deploy/publish.sh 192.168.157.202:/tmp/publish.sh
ssh -i /opt/prod 192.168.157.202 "/tmp/publish.sh"

#!/bin/bash

echo "Running building jar"

WORKSPACE=/home/pgaal/jenkins/pipeline/jenkins_home/workspace/maven-docker-pipeline

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.3-eclipse-temurin-20-alpine $@

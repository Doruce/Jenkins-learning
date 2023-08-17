#!/bin/bash

echo "Running building jar"

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.3-eclipse-temurin-20-alpine $@

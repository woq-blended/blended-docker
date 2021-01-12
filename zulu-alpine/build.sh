#!/bin/bash 
cd files

JRE_NAME="zulu8.50.0.51-ca-jre8.0.275-linux_musl_x64"

umask 002
wget -O "$JRE_NAME.tar.gz" 'https://cdn.azul.com/zulu/bin/'$JRE_NAME'.tar.gz'
tar -xzf "$JRE_NAME.tar.gz"
rm -f $JRE_NAME.tar.gz
chgrp -R root $JRE_NAME
chmod -R g+srwX $JRE_NAME
cd ..

docker build --build-arg JRE_NAME=$JRE_NAME -t blended/zulu-alpine:$(cat version.txt) .

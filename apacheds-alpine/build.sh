#!/bin/bash 
cd files

APACHEDS_VERSION="2.0.0.AM26"
APACHEDS_NAME="apacheds-${APACHEDS_VERSION}"

umask 002
wget -O "$APACHEDS_NAME.tar.gz" 'http://archive.apache.org/dist/directory/apacheds/dist/'$APACHEDS_VERSION'/'$APACHEDS_NAME'.tar.gz'
tar -xzf "$APACHEDS_NAME.tar.gz"
rm -f $APACHEDS_NAME.tar.gz
chgrp -R root $APACHEDS_NAME
chmod -R g+srwX $APACHEDS_NAME
cd ..

set -x 
docker build --build-arg APACHEDS_NAME=$APACHEDS_NAME -t blended/apacheds-alpine:$(cat version.txt) .

#!/bin/bash 
set -x 
docker build -t blended/ftp-alpine:$(cat version.txt) .

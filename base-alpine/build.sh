#!/bin/bash -l 
docker build -t blended/base-alpine:$(cat version.txt) .

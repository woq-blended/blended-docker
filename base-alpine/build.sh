#!/bin/bash -l 
docker build -t $(cat version.txt) .

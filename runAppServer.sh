#!/bin/bash

# IMPORT CONSTANT
. commonPath.sh

# Run appServer
echo "START RUNNING APP SERVER..."
cd $PATH_appServer
docker build . \
  --file tomcat.dockerfile \
  --tag="tomcat:9.0.34"
docker run -it \
  --name tomcatServer \
  --detach \
  --publish 8080:8080 \
  --network serverNet \
  -v $PATH_TOMCAT/webapps:/opt/tomcat/webapps \
  tomcat:9.0.34
cd -


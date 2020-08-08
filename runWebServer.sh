#!/bin/bash

# IMPORT CONSTANT
. commonPath.sh

# Run webServer
echo "START RUNNING WEB SERVER..."
cd $PATH_webServer
docker build . \
  --file nginx.dockerfile \
  --tag="nginx:1.18.0"
docker run -it \
  --name nginxServer \
  --detach \
  --publish 80:80 \
  --network serverNet \
  -v $PATH_webServer/html:/usr/local/nginx/html \
  -v $PATH_webServer/nginx_conf:/usr/local/nginx/conf \
  nginx:1.18.0 
#  -v /Users/nakataryosuke/workspace/Servers/Servers/webServer/html:/usr/local/nginx/html \
#  -v /Users/nakataryosuke/workspace/Servers/Servers/webServer/nginx_conf:/usr/local/nginx/conf \
cd -


#!/bin/bash

NETWORK="serverNet"
WEBSERVER="nginxServer"
APPSERVER="tomcatServer"
DBSERVER="postgreServer"
#DUMMY1="nginxConsole"
#DUMMY2="tomcatConsole"

# Initialize docker environment
echo "STOP SERVERS..."
docker stop $WEBSERVER $APPSERVER $DBSERVER
#docker stop $WEBSERVER $APPSERVER $DBSERVER $DUMMY1 $DUMMY2
echo "REMOVE CONTAINERS..."
docker container rm $WEBSERVER $APPSERVER $DBSERVER
#docker container rm $WEBSERVER $APPSERVER $DBSERVER $DUMMY1 $DUMMY2
echo "REMOVE IMAGES..."
#docker image rm $WEBSERVER $APPSERVER $DBSERVER $DUMMY1 $DUMMY2
echo "REMOVE NETWORKS..."
docker network rm $NETWORK


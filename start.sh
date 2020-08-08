#!/bin/bash

# Initialize docker 
./init.sh
# Make network
./makeNetwork.sh
# Run DBServer
./runDBServer.sh
# Run appServer
./runAppServer.sh
# Run webServer
./runWebServer.sh
# Make Dummy Container
# ./dummyConsole.sh



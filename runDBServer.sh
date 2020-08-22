#!/bin/bash

# IMPORT CONSTANT
. commonPath.sh

# Run webServer
echo "START RUNNING DB SERVER..."
cd $PATH_dbServer
docker run -it \
  --name postgreServer \
  --detach \
  --publish 15432:5432 \
  --network serverNet \
  -e POSTGRES_DB=dinedb \
  -e PGDATA=/var/lib/postgresql/data \
  -v $PATH_dbServer/data:/var/lib/postgresql/data \
  postgres:12-alpine
cd -

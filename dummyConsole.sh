# IMPORT CONSTANT
. commonPath.sh

# DUMMY
echo "MAKE DUMMY CONTAINER"
docker run -it --detach --name nginxConsole    --network serverNet nginx:1.18.0  ash
docker run -it --detach --name tomcatConsole   --network serverNet tomcat:9.0.34 ash

# Run dbServer
echo "START RUNNING DB SERVER..."
cd $PATH_dbServer
docker run -it \
  --name postgreConsole \
  --detach \
  --publish 15432:5432 \
  --network serverNet \
  -e POSTGRES_DB=dinedb \
  -e PGDATA=/var/lib/postgresql/data \
  -v $PATH_dbServer/data:/var/lib/postgresql/data \
  postgres:12-alpine ash
cd -


# IMPORT CONSTANT
. commonPath.sh

# DUMMY
cd $PATH_dbServer
echo "MAKE DUMMY CONTAINER"
docker run -it \
  --name postgreConsole \
  --publish 15432:5432 \
  --network serverNet \
  -e POSTGRES_DB=dinedb \
  -e PGDATA=/var/lib/postgresql/data \
  -v $PATH_dbServer/data:/var/lib/postgresql/data \
  postgres:12-alpine ash
cd -


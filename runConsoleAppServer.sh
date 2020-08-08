
PATH_HOME="/Users/nakataryosuke/workspace/"
PATH_appServer=$PATH_HOME"Servers/appServer/"
PATH_TOMCAT=$PATH_appServer"apache-tomcat"

# DUMMY
echo "MAKE APP SERVER CONSOLE"
docker run -it \
  --name tomcatConsole \
  --network serverNet \
  -v $PATH_TOMCAT/webapps:/opt/tomcat/webapps \
  tomcat:9.0.34 ash


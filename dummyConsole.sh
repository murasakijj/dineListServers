
# DUMMY
echo "MAKE DUMMY CONTAINER"
docker run -it --detach --name nginxConsole  --network serverNet nginx:1.18.0  ash
docker run -it --detach --name tomcatConsole --network serverNet tomcat:9.0.34 ash


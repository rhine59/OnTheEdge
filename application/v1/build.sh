#!/bin/sh
docker login --username=rhine59 --password=granv1lle
# Build and execute a simple NodeJS application that will respond to a CURL request to PORT 2020
echo *INFO* finding and removing any previous instances
id=`docker ps -a|grep -i smartcart|awk '{print $1}'`
docker stop ${id}
docker rm ${id}
docker rmi rhine59/smartcart:v1
echo *INFO* building a new NodeJS container image
docker build -t rhine59/smartcart:v1 .
sudo docker push rhine59/smartcart:v1


exit 0

echo *INFO* running our new image and exposing service on port 2020
docker run -p 2020:8080 -d rhine59/smartcart:v1
id=`docker ps|grep -i smartcart|awk '{print $1}'`
echo *INFO* waiting 5 seconds for the NodeJS server to initialise
sleep 5
echo *INFO* look at the application logs
docker logs ${id}
echo *INFO* send a request to the server
curl -i localhost:2020




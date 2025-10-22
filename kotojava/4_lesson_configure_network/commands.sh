# Link: https://www.youtube.com/watch?v=aex-Spr8O1E&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=5
docker run -dit --name mypython_server --publish 8888:8080 python:3.9-slim python -m http.server 8080
docker network create mypython_network; # created ntweork -> bridge
docker run -dit --network=mypython_network --name mypython_server2 --publish 8888:8080 python:3.9-slim python -m http.server 8080
docker run -dit --network=mypython_network --name mypython_client ubuntu:latest 
docker exec -it mypython_client //bin//bash
curl mypython_server2:8080 # curl <container_name_in_the_same_network>:<port>



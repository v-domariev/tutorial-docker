# Link: https://www.youtube.com/watch?v=87qdu6-dXag&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=3
# after configured Dockerfile for server. => Build the image
docker build -t server .

# after configured Dockerfile for client. => Build the image
docker build -t client .


docker run -dit -p 8080:8080 --name myserver server:latest

docker network create mydockercompose_network
docker volume create mydockercompose_volume
docker run -dit -p 8080:8080 --network=mydockercompose_network --name server server:latest
docker run -dit --network=mydockercompose_network --name client client:latest

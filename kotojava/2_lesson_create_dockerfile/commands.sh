echo "LINK: https://www.youtube.com/watch?v=8OOUW1iX4xI&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=8"
echo "Commands:"
docker run -it ubuntu:22.04
# IN_CONTAINER:
apt update
apt install -y curl 
docker cp ./HelloWorld.java  frosty_engelbart:/home/Main.java
apt install openjdk-8 -y

javac HelloWorld.java
mv HelloWorld.java Main.java
javac HelloWorld.java
javac Main.java

docker ps -a
docker commit 707bd9806909 myimage:0.1
docker history myimage:0.1
# Part 2. Create automatic and readeable script by Dockerfile
docker images
docker rmi -f myimage:0.1

docker build -t myimage:0.2 . ; # where last parameter, dot, is path to Dockerfile
docker history myimage:0.2

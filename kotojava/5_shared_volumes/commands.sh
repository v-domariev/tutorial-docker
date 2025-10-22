# LINK: https://www.youtube.com/watch?v=VienKEnlLWw&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=3

# Part 1: create shared volumes
# Path ffor volume has apaptation for Windows OS. 
# 1. //d -> additional / . Because CMD thinks that it is a parameter.
# 2. '' for destination path. And choose already existed folder.
docker run -dit --name myshared_volume_lesson2 -v //d/repos/tutorial-docker/kotojava/5_shared_volumes/myshared_folder2/:'/home' 
docker exec -it myshared_volume_lesson //bin//bash

root@aad7103dccc8:/home# echo 'Hello from container' >> myfile.txt

# Part 2: create Toms

docker volume ls
docker volume create myvolume
docker run -dit --name myshared_volume -v myvolume:/home ubuntu:22.04
cd home
echo "Hi from container. Shared volume" >> myfile.txt
# exit
docker rm -f myshared_volume
# Test is volume working
docker run -dit --name myshared_volume_lesson2 -v myvolume:/home ubuntu:22.04
docker exec -it myshared_volume_lesson2 //bin/bash
cd /home
ls 
cat myfile.txt
# it is works

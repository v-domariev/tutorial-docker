echo "LINK: https://www.youtube.com/watch?v=4Tx8GnOjzy8&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=5"
echo "Commands:"

echo 'docker run -dit --name mypython_server -p host_port/parent_port/external_port_container:internal_container_port/hosted_application_port_in_container python:3.9-slim; # -p or --publish
'
docker run -dit --name mypython_server -p 8888:8080 python:3.9-slim; # -p or --publish
docker ps -a
docker attach mypython_server
docker exec -it mypython_server //bin//bash # //bin//bash should have two slahes// because command executed in Windows, that looking for installed //bin//bash.
# In other OS the path is simply just //bin//bash
python -m http.server 8080
# Ctrl+P Ctrl+Q -> for deataching shell from docker container without stoping it. It is turn interactive mode into daemon mode.
apt update 
apt install curl -y
curl localhost:8080 # in container CLI
curl localhost:8888 # in host/WindowsOS CLI/git_bash

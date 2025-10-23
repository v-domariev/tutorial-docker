# Link: https://www.youtube.com/watch?v=NoJ5FGKv7m4&list=PLvjGcAdDu5utraOVR4akDAUthmgjVt0V5&index=1

docker swarm init
set +o history; # Disabling history tracking
echo "qwerty123" | docker secret create mydbpass -
set -o history; # Enabling history tracking
docker secret ls
# after docker-compose.yaml created
docker stack deploy -c docker-compose.yaml mystack
docker ps -a

#!/bin/bash

# Stop and remove all running containers
if [ "$(docker ps -q)" ]; then
    docker stop $(docker ps -q)
    docker rm $(docker ps -aq)
else
    echo "No running containers found."
fi

# Delete all Docker images
docker rmi $(docker images -q)

# Delete all Docker volumes
docker volume rm $(docker volume ls -q)

cd ../data/db_volume || exit

# Run rm -rf * with automatic "yes" answer
yes | rm -rf *

echo "deleted db_volume completed."

cd ../data/wp_volume || exit

# Run rm -rf * with automatic "yes" answer
yes | rm -rf *

echo "delted wp_volume completed."


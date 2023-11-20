#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Stop and remove all running containers
docker stop $(docker ps -q) >/dev/null 2>&1
docker rm $(docker ps -aq) >/dev/null 2>&1
echo -e -n "${GREEN}All running containers are stopped${NC}"
sleep 8
echo "     ✅"

# Delete all Docker images
docker rmi $(docker images -q) >/dev/null 2>&1
echo -e -n "${GREEN}All all Docker images deleted${NC}"
sleep 2
echo "          ✅"

# Delete all Docker volumes
docker volume rm $(docker volume ls -q) >/dev/null 2>&1
cd ./data/db_volume || exit

# Run rm -rf * with automatic "yes" answer
yes | rm -rf * >/dev/null 2>&1
cd ../../ || exit
cd ./data/wp_volume || exit
echo -e -n "${GREEN}Deleted db_volume completed${NC}"
sleep 2
echo "            ✅"
# Run rm -rf * with automatic "yes" answer
yes | rm -rf * >/dev/null 2>&1

echo -e -n "${GREEN}Deleted wp_volume completed${NC}"
sleep 2
echo "            ✅"
echo -e -n "${GREEN}All volumes are deleted ${NC}"
sleep 2
echo "               ✅"

docker system prune -af

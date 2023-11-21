#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Delete all Docker images
docker rmi $(docker images -q) >/dev/null 2>&1
echo -e -n "${GREEN}All images deleted${NC}"
sleep 2
echo " ✅"

# Delete all Docker volumes
docker volume rm $(docker volume ls -q) >/dev/null 2>&1

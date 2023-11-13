
# Define ANSI color codes
GREEN=\033[0;32m
NC=\033[0m

# @todo maybe also delete the directory where "data" is stored later when the project runs on vm
up:
	@cd srcs && docker-compose up -d --build
	@printf "${GREEN}Docker Compose up completed successfully.${NC}\n"

down:
	@cd srcs && docker-compose down
	@printf "${GREEN}Docker Compose down completed successfully.${NC}\n"

clean:
	@bash -c "./srcs/requirements/tools/cleanUpDocker.sh"

.PHONY: up down clean

GREEN=\033[0;32m
NC=\033[0m

DATA_DIR := data
WP_VOLUME_DIR := $(DATA_DIR)/wp_volume
DB_VOLUME_DIR := $(DATA_DIR)/db_volume

up:
	@test -d $(DATA_DIR) || mkdir -p $(DATA_DIR)
	@test -d $(WP_VOLUME_DIR) || mkdir -p $(WP_VOLUME_DIR)
	@test -d $(DB_VOLUME_DIR) || mkdir -p $(DB_VOLUME_DIR)
	@cd srcs && docker-compose up -d --build
	@printf "${GREEN}Docker Compose up completed successfully.${NC}\n"

down:
	@printf "${GREEN}Shutting down ...${NC}\n"
	@cd srcs && docker-compose down
	@printf "${GREEN}Docker Compose down completed successfully.${NC}\n"
	@printf "${GREEN}Shutted down ✅${NC}\n"

clean: down
	@printf "${GREEN}Cleaning up...${NC}\n"
	-@bash -c "./srcs/requirements/tools/cleanUpDocker.sh" 2>/dev/null || true
	-@test -d $(DB_VOLUME_DIR) && rm -r $(DB_VOLUME_DIR)/* 2>/dev/null || true
	-@test -d $(WP_VOLUME_DIR) && rm -r $(WP_VOLUME_DIR)/* 2>/dev/null || true
	-@test -d $(DATA_DIR) && rm -r $(DATA_DIR) 2>/dev/null || true
	@printf "${GREEN}Cleaned up ✅${NC}\n"
fclean: clean
	-@docker system prune -af > /dev/null 2>&1
	@printf "${GREEN}Hardreset project ✅${NC}\n"

re: fclean up

.PHONY: up down clean fclean

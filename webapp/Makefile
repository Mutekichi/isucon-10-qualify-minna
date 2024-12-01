SHELL=/bin/bash
# 環境によってdocker-composeもしくはdocker composeを用いる
DOCKER_COMPOSE := $(shell which docker-compose 2>/dev/null || echo "docker compose")

api-server/%: ## api-server/${lang}docker-compose up with mysql and api-server 
	$(DOCKER_COMPOSE) -f docker-compose/$(shell basename $@).yaml down -v
	$(DOCKER_COMPOSE) -f docker-compose/$(shell basename $@).yaml up --build mysql api-server

isuumo/%: ## isuumo/${lang} docker-compose up with mysql and api-server frontend nginx
	$(DOCKER_COMPOSE) -f docker-compose/$(shell basename $@).yaml down -v
	$(DOCKER_COMPOSE) -f docker-compose/$(shell basename $@).yaml up --build mysql api-server nginx frontend


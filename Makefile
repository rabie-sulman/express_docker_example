include .env

export $(shell sed 's/=.*//' .env)

.PHONY: setup
setup:
	@echo "running setup"
	docker-compose up --build -d
	docker ps --filter "label=$(APP_LABEL)" -q
	docker exec `docker ps --filter "label=$(APP_LABEL)" -q` npm install

.PHONY: start
start:
	if [ ! -d "node_modules" ]; then \
	 echo "modules not found, running setup first"; \
	 make setup; \
	 exit; \
	fi
	docker-compose up -d

.PHONY: stop
stop:
	docker-compose stop

include .env

.PHONY: help compose-start compose-stop docker-start-local compose-build

help: ## Show this help menu
	@echo "Usage: make [TARGET ...]"
	@echo ""
	@grep --no-filename -E '^[a-zA-Z_%-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-15s %s\n", $$1, $$2}'

compose-stop: ## Stop docker (might need sudo)
	@docker-compose stop;

compose-start: compose-stop compose-build ## Start docker (might need sudo)
	@docker-compose up -d;

compose-start-local: compose-stop compose-build ## Start docker for local dev (w/o nginx)
	@docker-compose up --scale nginx=0;

compose-build:
	@docker-compose build;

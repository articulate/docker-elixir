help:
	@echo "+ $@"
	@grep -hE '(^[a-zA-Z0-9\._-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m## /[33m/'
.PHONY: help

1.12: ## Build the Elixir 1.12 image
	@echo "+ Elixir $@"
	@docker build -t articulate/articulate-elixir:1.12 1.12
.PHONY: 1.12

1.11: ## Build the Elixir 1.11 image
	@echo "+ Elixir $@"
	@docker build -t articulate/articulate-elixir:1.11 1.11
.PHONY: 1.11

1.10: ## Build the Elixir 1.10 image
	@echo "+ Elixir $@"
	@docker build -t articulate/articulate-elixir:1.10 1.10
.PHONY: 1.10

1.9: ## Build the Elixir 1.9 image
	@echo "+ Elixir $@"
	@docker build -t articulate/articulate-elixir:1.9 1.9
.PHONY: 1.9

all: 1.10 1.9 ## Build all Elixir images
.PHONY: all

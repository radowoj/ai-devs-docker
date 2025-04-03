.PHONY: install
install: build-docker 3rd-devs bun-install

3rd-devs:
	@git clone https://github.com/i-am-alice/3rd-devs.git 3rd-devs

.PHONY: bun-install
bun-install:
	@docker compose run --rm node bun install
	@docker compose run --rm node bun pm trust --all

.PHONY: build-docker
build-docker:
	@docker compose build

.PHONY: sh
sh:
	@docker compose run --rm --remove-orphans node bash


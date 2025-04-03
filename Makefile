.PHONY: install
install: build-docker 3rd-devs

3rd-devs:
	@git clone https://github.com/i-am-alice/3rd-devs.git 3rd-devs

.PHONY: build-docker
build-docker:
	@docker compose build

.PHONY: sh
sh:
	@docker compose run --rm --remove-orphans node bash


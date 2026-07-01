.PHONY: build run test shell

build:
	docker compose build

run:
	docker compose up --build

test:
	docker compose run --rm api bundle exec rspec

shell:
	docker compose run --rm api bash


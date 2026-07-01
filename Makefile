.PHONY: build run test logs status down

build:
	docker compose build

run:
	docker compose up --build

test:
	docker compose run --rm monitor bundle exec rspec

logs:
	docker compose logs -f

status:
	docker compose ps

down:
	docker compose down


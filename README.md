# Smart Ticket API

Smart Ticket API is a Ruby backend project for managing customer support tickets. It is built with Sinatra, SQLite, RSpec, and Docker.

## Features

- Create support tickets using a JSON API.
- Automatically score ticket priority from title and tags.
- List all tickets or filter by status.
- Resolve open tickets.
- Persist data in SQLite.
- Run locally with Docker Compose.
- Test API behavior with RSpec and Rack::Test.

## Tech Stack

- Ruby 3.3
- Sinatra
- Sequel ORM
- SQLite
- RSpec
- Docker and Docker Compose

## Run With Docker

```bash
docker compose up --build
```

Health check:

```bash
curl http://localhost:4567/health
```

Create a ticket:

```bash
curl -X POST http://localhost:4567/tickets \
  -H "Content-Type: application/json" \
  -d '{"title":"Payment failed for VIP customer","customer_email":"client@example.com","tags":["vip","production"]}'
```

List tickets:

```bash
curl http://localhost:4567/tickets
```

Resolve a ticket:

```bash
curl -X PATCH http://localhost:4567/tickets/TICKET_ID/resolve
```

## Run Tests

```bash
docker compose run --rm api bundle exec rspec
```

## Why This Project Helps Selection

This project shows practical Ruby backend skills: API endpoints, validation, business logic, database persistence, testing, and Dockerized development. It is simple enough to explain in an interview but complete enough to look professional on GitHub.


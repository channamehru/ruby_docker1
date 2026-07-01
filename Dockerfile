FROM ruby:3.3-slim

WORKDIR /app

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential libsqlite3-dev \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile ./
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]


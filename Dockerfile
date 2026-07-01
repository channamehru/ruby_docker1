FROM ruby:3.3-slim

WORKDIR /app

COPY Gemfile ./
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]


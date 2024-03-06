FROM nvdk/elixir-server:feature-debian-based

COPY . /app

RUN sh /setup.sh


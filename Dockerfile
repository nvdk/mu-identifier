FROM redpencil/elixir-server:feature-test-buildx-arm64

COPY . /app

RUN sh /setup.sh

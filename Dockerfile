FROM madnificent/elixir-server:1.13.0

# OpenShift runs containers as an arbitrary UID in group 0 with HOME=/.
# Keep using /root (where mix/hex live) and make it and /app group-accessible.
ENV HOME=/root

COPY . /app

RUN sh /setup.sh \
  && chgrp -R 0 /root /app \
  && chmod -R g=u /root /app

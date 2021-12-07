FROM scratch
RUN --mount=type=secret,id=DOCKER_HUB_ACCESS_TOKEN \
  cat /run/secrets/DOCKER_HUB_ACCESS_TOKEN

FROM alpine
RUN --mount=type=secret,id=github_token \
  cat /run/secrets/DOCKER_HUB_ACCESS_TOKEN

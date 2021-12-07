FROM alpine
RUN --mount=type=secret,id=github_token \
  cat /run/secrets/github_token

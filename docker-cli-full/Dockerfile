# syntax=docker/dockerfile:1

FROM docker-cli

COPY --from=docker-buildx / /
COPY --from=docker-compose / /

ENTRYPOINT ["/usr/local/bin/docker"]

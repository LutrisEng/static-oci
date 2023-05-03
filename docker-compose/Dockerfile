# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go docker-compose https://github.com/docker/compose.git v2.17.3 ./cmd

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/docker-compose-$TARGETARCH /usr/local/libexec/docker/cli-plugins/docker-compose

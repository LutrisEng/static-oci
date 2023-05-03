# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go docker-buildx https://github.com/docker/buildx.git v0.10.4 ./cmd/buildx

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/docker-buildx-$TARGETARCH /usr/local/libexec/docker/cli-plugins/docker-buildx

# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache git clone -b v23.0.5 --depth=1 https://github.com/docker/cli.git /root/go/src/github.com/docker/cli \
 && cd /root/go/src/github.com/docker/cli \
 && mv vendor.mod go.mod \
 && mv vendor.sum go.sum \
 && build-go-impl /app/docker ./cmd/docker

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/docker-$TARGETARCH /usr/local/bin/docker
ENTRYPOINT ["/usr/local/bin/docker"]

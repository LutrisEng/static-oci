# syntax=docker/dockerfile:1

FROM alpine:3.19.1

SHELL ["/bin/sh", "-euxo", "pipefail", "-c"]
RUN apk add bash git go cabal \
 && apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing zig \
 && mkdir -p /app \
 && mkdir -p /gocache
ENV GOOS="linux" \
    CGO_ENABLED="1" \
    GOCACHE="/gocache" \
    CC="zcc" \
    CXX="z++"
COPY build-go build-go-impl clone z++ zcc /usr/local/bin/

WORKDIR /app

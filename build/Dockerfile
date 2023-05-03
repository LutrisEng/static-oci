# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM alpine:20230329

SHELL ["/bin/sh", "-euxo", "pipefail", "-c"]
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
 && apk add bash git go cabal zig \
 && mkdir -p /app \
 && mkdir -p /gocache
ENV GOOS="linux" \
    CGO_ENABLED="1" \
    GOCACHE="/gocache" \
    CC="zcc" \
    CXX="z++"
COPY build-go build-go-impl clone z++ zcc /usr/local/bin/

WORKDIR /app

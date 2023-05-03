# syntax=docker/dockerfile:1

FROM alpine:3.17.3

SHELL ["/bin/sh", "-euxo", "pipefail", "-c"]
RUN apk add build-base bash git go cabal \
 && mkdir -p /app \
 && cabal update
COPY build-go clone /usr/local/bin/

WORKDIR /app

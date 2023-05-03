# syntax=docker/dockerfile:1

FROM alpine:3.17.3

RUN apk add build-base bash git go \
 && mkdir -p /app
COPY build-go clone /usr/local/bin/

WORKDIR /app

# syntax=docker/dockerfile:1

FROM build as builder

RUN build-go docker-compose https://github.com/docker/compose.git v2.17.3 ./cmd

FROM scratch

COPY --from=builder /app/docker-compose /usr/local/libexec/docker/cli-plugins/docker-compose

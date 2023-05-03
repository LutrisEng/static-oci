# syntax=docker/dockerfile:1

FROM build as builder

RUN build-go docker-buildx https://github.com/docker/buildx.git v0.10.4 ./cmd/buildx

FROM scratch

COPY --from=builder /app/docker-buildx /usr/local/libexec/docker/cli-plugins/docker-buildx

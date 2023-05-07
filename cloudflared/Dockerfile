# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go cloudflared https://github.com/cloudflare/cloudflared.git 2023.5.0 ./cmd/cloudflared

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/cloudflared-$TARGETARCH /usr/local/bin/cloudflared

# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go helm https://github.com/helm/helm.git v3.11.3 ./cmd/helm

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/helm-$TARGETARCH /usr/local/bin/helm
ENTRYPOINT ["/usr/local/bin/helm"]

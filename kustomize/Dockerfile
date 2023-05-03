# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go kustomize https://github.com/kubernetes-sigs/kustomize.git kustomize/v5.0.1 ./kustomize

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/kustomize-$TARGETARCH /usr/local/bin/kustomize
ENTRYPOINT ["/usr/local/bin/kustomize"]

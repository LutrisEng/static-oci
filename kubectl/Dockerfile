# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go kubectl https://github.com/kubernetes/kubernetes.git v1.27.1 ./cmd/kubectl

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/kubectl-$TARGETARCH /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]

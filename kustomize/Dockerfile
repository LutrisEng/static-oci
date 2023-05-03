# syntax=docker/dockerfile:1

FROM build as builder

RUN build-go kustomize https://github.com/kubernetes-sigs/kustomize.git kustomize/v5.0.1 ./kustomize

FROM scratch

COPY --from=builder /app/kustomize /usr/local/bin/kustomize
ENTRYPOINT ["/usr/local/bin/kustomize"]

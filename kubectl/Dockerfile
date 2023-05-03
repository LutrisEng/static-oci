# syntax=docker/dockerfile:1

FROM build as builder

RUN build-go kubectl https://github.com/kubernetes/kubernetes.git v1.27.1 ./cmd/kubectl

FROM scratch

COPY --from=builder /app/kubectl /bin/kubectl

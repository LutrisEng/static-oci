# syntax=docker/dockerfile:1

FROM build as builder

RUN clone https://github.com/helm/helm.git v3.11.3 \
 && make build

FROM scratch

COPY --from=builder /app/bin/helm /usr/local/bin/helm

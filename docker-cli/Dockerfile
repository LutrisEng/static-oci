# syntax=docker/dockerfile:1

FROM build as builder

RUN git clone -b v23.0.5 --depth=1 https://github.com/docker/cli.git /root/go/src/github.com/docker/cli \
 && cd /root/go/src/github.com/docker/cli \
 && mv vendor.mod go.mod \
 && mv vendor.sum go.sum \
 && go build -v -o /app/docker ./cmd/docker

FROM scratch

COPY --from=builder /app/docker /usr/local/bin/docker
ENTRYPOINT ["/usr/local/bin/docker"]

# syntax=docker/dockerfile:1

FROM build as builder

RUN git clone -b v23.0.5 --depth=1 https://github.com/docker/cli.git /root/go/src/github.com/docker/cli \
 && cd /root/go/src/github.com/docker/cli \
 && TARGET=/out ./scripts/build/binary

FROM scratch

COPY --from=builder /out /

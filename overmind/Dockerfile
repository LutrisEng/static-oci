# syntax=docker/dockerfile:1

FROM build as builder

RUN build-go overmind https://github.com/DarthSim/overmind.git v2.4.0

FROM scratch

COPY --from=builder /app/overmind /bin/overmind

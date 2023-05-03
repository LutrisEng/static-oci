# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM build as builder

RUN --mount=type=cache,target=/gocache build-go overmind https://github.com/DarthSim/overmind.git v2.4.0

FROM scratch

ARG TARGETARCH
COPY --from=builder /app/overmind-$TARGETARCH /usr/local/bin/overmind
ENTRYPOINT ["/usr/local/bin/overmind"]

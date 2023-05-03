# syntax=docker/dockerfile:1

FROM build as builder

RUN clone https://github.com/hadolint/hadolint.git v2.12.0 \
 && cabal configure \
 && cabal build \
 && cabal install --installdir=/app/bin

FROM scratch

COPY --from=builder /app/bin/hadolint /usr/local/bin/hadolint

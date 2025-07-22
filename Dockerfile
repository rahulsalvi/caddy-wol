FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
  --with github.com/dulli/caddy-wol

FROM ghcr.io/rahulsalvi/caddy:2025.6.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile

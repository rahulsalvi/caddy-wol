FROM caddy:2.10.2-builder AS builder

RUN xcaddy build \
  --with github.com/dulli/caddy-wol

FROM ghcr.io/rahulsalvi/caddy:2025.9.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile

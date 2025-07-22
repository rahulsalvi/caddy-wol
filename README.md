# caddy-wol

Stack for building and running [caddy-wol](https://github.com/dulli/caddy-wol)

## Usage

```sh
touch .env
# port that caddy-wol will listen on
echo PORT=1234 >>.env
# target server resource
echo PROXY_HOST=http://example.com:1234 >>.env
# MAC address of target network interface
echo WOL_MAC=ff:ff:ff:ff:ff:ff >>.env
# broadcast address to send magic packet to
echo WOL_BROADCAST_ADDR=192.168.1.255:9 >>.env
sudo docker compose up -d
```

## Licenses

* [LICENSE](LICENSE)
* [caddy-wol](https://github.com/dulli/caddy-wol/blob/main/LICENSE.md)
* [caddy](https://github.com/caddyserver/caddy/blob/master/LICENSE)

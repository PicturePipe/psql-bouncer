# psql-bouncer

This builds a pgbouncer image that can connect to its backing server using Wireguard.

## Config

If `DATABASE_HOST` and `DATABASE_PORT` are provided, this container also runs a socat instance
to forward traffic to the database without the bouncer.

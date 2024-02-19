#!/bin/sh -e

if [ -e "/wg0.conf" ]; then
	wg-quick up /wg0.conf
fi

exec /usr/bin/pgbouncer /pgbouncer.conf

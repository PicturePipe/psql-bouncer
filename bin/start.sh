#!/bin/sh -e

if [ -e "/conf/wg0.conf" ]; then
	wg-quick up /conf/wg0.conf
fi

exec su pgbouncer -c 'exec /usr/bin/pgbouncer /conf/pgbouncer.conf'

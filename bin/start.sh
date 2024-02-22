#!/bin/sh -e

if [ -e "/conf/wg0.conf" ]; then
	wg-quick up /conf/wg0.conf
fi

if [ -n "$DATABASE_HOST" -a -n "$DATABASE_PORT" ]; then
	rm /services/socat/down
fi

exec /sbin/runsvdir /services

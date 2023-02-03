#!/usr/bin/env sh

set -eu

if [ -z "${1:-}" ]; then

	while true; do
		/usr/sbin/logrotate -v -f --state /tmp/logrotate.status /etc/logrotate/logrotate.conf
		sleep 86400
	done

else

	eval "$@"

fi


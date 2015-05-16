#!/bin/bash

# Sanity checks
DAEMON=/sbin/nfs_automount
test -x ${DAEMON} || exit 0
test -f /etc/nfs_automount.conf || exit 0

case "$2" in
    CONNECTED)
        # connection established
	echo -n "Starting automount: "
	start-stop-daemon --start --quiet --background --exec ${DAEMON} \
		&& echo "OK" || echo "FAIL"
        ;;
    DISCONNECTED)
        # connection lost";
	echo -n "Stopping automount: "
	start-stop-daemon --stop --quiet --exec ${DAEMON} \
		&& echo "OK" || echo "FAIL"
        ;;
esac

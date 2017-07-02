#!/bin/sh
ssh-keygen -b 4096 -f ${HOSTNAME} -A && \
	exec /usr/sbin/sshd -d -e

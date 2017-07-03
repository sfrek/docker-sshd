#!/bin/sh
[[ -z ${URL_KEYS} ]] && exit 1

mkdir -p ~/.ssh
curl -s -XGET ${URL_KEYS} > ~/.ssh/authorized_keys
chmod 0440 ~/.ssh/authorized_keys

ssh-keygen -b 4096 -f ${HOSTNAME} -A && \
	exec /usr/sbin/sshd -D -e -p 22822

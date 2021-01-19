#!/bin/bash -l 
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    cat /etc/passwd | grep -v "$USER_NAME" > /tmp/passwd
    echo "${USER_NAME:-default}:x:$(id -u):0:${USER_NAME:-default} user:${HOME}:/sbin/nologin" >> /tmp/passwd
    cat /tmp/passwd > /etc/passwd
    rm -f /tmp/passwd
  fi
fi
set -x 
exec "$@"

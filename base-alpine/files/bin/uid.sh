#!/bin/bash -l 
if ! whoami &> /dev/null; then
  if [ -w /etc/passwd ]; then
    cat /etc/passwd | grep -v "$USER_NAME" > /etc/passwd
    echo "${USER_NAME:-default}:x:$(id -u):0:${USER_NAME:-default} user:${HOME}:/sbin/nologin" >> /etc/passwd
  fi
fi
set -x 
exec "$@"

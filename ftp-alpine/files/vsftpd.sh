#!/bin/bash

umask 002
touch /opt/vsftp/vsftpd.log
/usr/sbin/vsftpd
tail -f /opt/vsftp/vsftpd.log

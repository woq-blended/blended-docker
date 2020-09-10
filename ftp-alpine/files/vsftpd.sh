#!/bin/bash

touch /var/log/vsftpd.log
/usr/sbin/vsftpd
tail -f /var/log/vsftpd.log

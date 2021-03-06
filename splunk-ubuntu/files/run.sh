#!/bin/bash -l

SPLUNK_HOME=/opt/splunk

umask 002

tar -C /tmp -cf - splunk  | tar -C /opt/splunk --strip-components=1 -xvf -

mkdir -p ${SPLUNK_HOME}/var/log/splunk 
ls -al $SPLUNK_HOME
nohup ${SPLUNK_HOME}/bin/splunk start --accept-license --no-prompt 2>&1 > /dev/null &
touch ${SPLUNK_HOME}/var/log/splunk/splunkd.log
tail -f ${SPLUNK_HOME}/var/log/splunk/splunkd.log


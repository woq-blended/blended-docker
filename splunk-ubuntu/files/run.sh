#!/bin/bash -l

SPLUNK_HOME=/opt/splunk

mkdir -p ${SPLUNK_HOME}/var/log/splunk 
nohup ${SPLUNK_HOME}/bin/splunk start --accept-license --no-prompt 2>&1 > /dev/null &
touch ${SPLUNK_HOME}/var/log/splunk/splunkd.log
tail -f ${SPLUNK_HOME}/var/log/splunk/splunkd.log


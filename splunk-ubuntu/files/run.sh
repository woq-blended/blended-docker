#!/bin/bash -l

groups 

SPLUNK_HOME=/opt/splunk

umask 002

 mkdir -p ${SPLUNK_HOME}/var/log/splunk 
ls -al $SPLUNK_HOME
# nohup ${SPLUNK_HOME}/bin/splunk start --accept-license --no-prompt 2>&1 > /dev/null &
# touch ${SPLUNK_HOME}/var/log/splunk/splunkd.log
# tail -f ${SPLUNK_HOME}/var/log/splunk/splunkd.log


#!/bin/bash

APACHEDS_CMD=/opt/apacheds/bin/apacheds.sh

${APACHEDS_CMD} start
tail -f /opt/apacheds/instances/default/log/apacheds.log

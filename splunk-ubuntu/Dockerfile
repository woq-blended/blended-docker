# The basic image to run Blended containers
FROM ubuntu:18.04

LABEL Author="Andreas Gies"

RUN groupadd -g 1500 splunk && useradd -d /opt/splunk -m -s /bin/bash -u 1500 -g splunk -G root splunk
RUN echo "splunk ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Installation section
RUN apt-get update 
RUN apt-get install --no-cache -y vim net-tools

ADD --chown=splunk:splunk files/splunk /opt/splunk
ADD --chown=splunk:splunk files/etc /opt/splunk/etc
ADD --chown=splunk:splunk files/run.sh /opt/splunk/run.sh

RUN chmod +x /opt/splunk/run.sh && chgrp -R 0 /opt/splunk && chmod -R g+rwX /opt/splunk

EXPOSE 8000
EXPOSE 8088

USER splunk:splunk

ENTRYPOINT /opt/splunk/run.sh

# End of Installation section

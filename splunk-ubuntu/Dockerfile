# The basic image to run Blended containers
FROM ubuntu:18.04

LABEL Author="Andreas Gies"

RUN groupadd -g 1500 splunk && useradd -d /opt/splunk -m -s /bin/bash -u 1500 -g root splunk
RUN echo "splunk ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Installation section
RUN apt-get update 
RUN apt-get install -y vim net-tools

RUN chgrp -R 0 /opt/splunk && chown -R :root /opt/splunk && chmod g+srwX /opt/splunk 

ADD --chown=splunk:root files/splunk /opt/splunk
ADD --chown=splunk:root files/etc /opt/splunk/etc
ADD --chown=splunk:root files/run.sh /opt/splunk/run.sh

RUN chmod +x /opt/splunk/run.sh 

EXPOSE 8000
EXPOSE 8088

USER splunk:root

ENTRYPOINT /opt/splunk/run.sh

# End of Installation section

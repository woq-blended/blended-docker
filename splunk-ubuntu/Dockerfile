# The basic image to run Blended containers
FROM ubuntu:18.04

MAINTAINER Andreas Gies 

RUN groupadd -g 1500 splunk && useradd -d /opt/splunk -m -s /bin/bash -u 1500 -g splunk splunk
RUN echo "splunk ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Installation section
ADD files/splunk-8.0.0-1357bef0a7f6-Linux-x86_64.tgz /opt
ADD files/etc /opt/splunk/etc
ADD files/run.sh /opt/splunk/run.sh

RUN chown -R splunk:splunk /opt/splunk && chmod u+x /opt/splunk/run.sh

RUN apt-get update 
RUN apt-get install -y vim net-tools

EXPOSE 8000
EXPOSE 8088

USER splunk:splunk

ENTRYPOINT /opt/splunk/run.sh

# End of Installation section

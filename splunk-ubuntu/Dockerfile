# The basic image to run Blended containers
FROM ubuntu:18.04

LABEL Author="Andreas Gies"
ENV USER_NAME=splunk

RUN groupadd splunk && useradd -d /opt/splunk -m -s /bin/bash -g root splunk

RUN apt-get update \
 && apt-get -y install vim net-tools 

RUN chgrp -R 0 /opt/splunk \
 && chmod g=u /opt/splunk 

ADD --chown=splunk:root files/bin/uid.sh /usr/local/bin/uid.sh
ADD --chown=splunk:root files/splunk /tmp/splunk
ADD --chown=splunk:root files/etc /tmp/splunk/etc
ADD --chown=splunk:root files/run.sh /opt/splunk/run.sh

RUN chmod +x /opt/splunk/run.sh \
 && chmod g+w /etc/passwd 

EXPOSE 8000
EXPOSE 8088

ENTRYPOINT [ "/usr/local/bin/uid.sh" ]

USER 10101

CMD /opt/splunk/run.sh


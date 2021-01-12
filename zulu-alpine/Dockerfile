# The basic image to run Blended containers
FROM blended/base-alpine:3.12.1

LABEL maintainer="Blended Development Team"

ARG JRE_NAME

RUN mkdir -p /opt \
 && chgrp -R 0 /opt \
 && chmod -R g+srwX /opt 

ADD files/${JRE_NAME} /opt/java
ADD files/profile.d /etc/profile.d



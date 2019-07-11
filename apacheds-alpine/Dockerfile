FROM atooni/zulu-8-alpine:1.0
MAINTAINER Blended Team

ENV APACHEDS_VERSION 2.0.0.AM25
ENV APACHEDS_URL http://archive.apache.org/dist/directory/apacheds/dist/${APACHEDS_VERSION}/apacheds-${APACHEDS_VERSION}.tar.gz

RUN apk --no-cache add openldap-clients gettext vim bash

RUN curl ${APACHEDS_URL} | tar -xzC /opt \
 && ln -s $(ls -d /opt/apacheds*) /opt/apacheds

ADD files /opt/apacheds

RUN /bin/bash -l /opt/apacheds/scripts/configure.sh

ENTRYPOINT ["/bin/bash", "-l", "/opt/apacheds/scripts/run.sh" ]
EXPOSE 10389


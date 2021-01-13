FROM blended/zulu-alpine:1.8.275
MAINTAINER Blended Team

ARG APACHEDS_NAME
ENV USER_NAME=apacheds

RUN apk --no-cache add openldap-clients gettext vim \
 && addgroup "$USER_NAME" \
 && adduser \
  --uid 10101 \
  --disabled-password \
  --gecos "" \
  --home /home/"$USER_NAME" \
  --ingroup "$USER_NAME" \
  "$USER_NAME" \
 && adduser $USER_NAME root 

RUN chown -R $USER_NAME:$GROUP /home/$USER_NAME \
 && mkdir -p /opt/apacheds \
 && chgrp -R 0 /opt/apacheds \
 && chown -R :root /opt/apacheds \
 && chmod -R g+srwX /opt/apacheds \
 && chmod g+w /etc/passwd

ENTRYPOINT [ "/usr/local/bin/uid.sh" ]

ADD --chown=apacheds:0 files/$APACHEDS_NAME /opt/apacheds
ADD --chown=apacheds:0 files/ldif /opt/apacheds/ldif
ADD --chown=apacheds:0 files/scripts /opt/apacheds/scripts

RUN /bin/bash -l /opt/apacheds/scripts/configure.sh \
 && chmod +x /opt/apacheds/scripts/run.sh

EXPOSE 10389

USER 10101
CMD ["/bin/bash", "-l", "/opt/apacheds/scripts/run.sh" ]


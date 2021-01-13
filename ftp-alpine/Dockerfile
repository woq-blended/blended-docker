# The basic image to run Blended containers
FROM blended/base-alpine:3.12.1

LABEL Blended Development Team

ENV USER_NAME=vsftp 

RUN addgroup "$USER_NAME" \
 && adduser \
  --uid 10101 \
  --disabled-password \
  --gecos "" \
  --ingroup "$USER_NAME" \
  "$USER_NAME" \
 && adduser $USER_NAME root 

RUN apk --no-cache add vsftpd 

RUN chown -R $USER_NAME:$GROUP /home/$USER_NAME \
 && mkdir -p /opt/vsftp \
 && chgrp -R 0 /opt/vsftp \
 && chown -R :root /opt/vsftp \
 && chmod -R g+srwX /opt/vsftp \
 && chmod g+w /etc/passwd

ADD --chown=vsftp:0 files/vsftpd.conf /etc/vsftpd.conf
ADD --chown=vsftp:0 files/vsftpd.sh /opt/vsftp

RUN mkdir -p /var/vsftpd/uploads \
 && chown -R nobody:nogroup /var/vsftpd \
 && chmod -R 0777 /var/vsftpd/uploads \
 && chmod +x /opt/vsftp/vsftpd.sh

EXPOSE 20
EXPOSE 21
ENTRYPOINT [ "/usr/local/bin/uid.sh" ]

USER 10101
CMD [ "/bin/bash", "-l", "/opt/vsftp/vsftpd.sh" ]

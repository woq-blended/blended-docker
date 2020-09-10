# The basic image to run Blended containers
FROM blended/base-alpine:1.0.1

LABEL Blended Development Team

RUN apk --no-cache add \
   vsftpd

ADD files/vsftpd.conf /etc/vsftpd.conf
ADD files/vsftpd.sh /opt

RUN mkdir -p /var/vsftpd/uploads \
 && chown -R nobody:nogroup /var/vsftpd \
 && chmod -R 0777 /var/vsftpd/uploads \
 && chmod +x /opt/vsftpd.sh

EXPOSE 21

CMD [ "/opt/vsftpd.sh" ]
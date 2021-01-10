# The basic image to run Blended containers
FROM blended/base-alpine:1.0.2

LABEL maintainer="Blended Development Team"

ENV JAVA_URL=https://cdn.azul.com/zulu/bin/zulu8.50.0.51-ca-jdk8.0.275-linux_musl_x64.tar.gz
ENV SBT_URL=https://github.com/sbt/sbt/releases/download/v1.4.5/sbt-1.4.5.tgz

# Installation section
ADD files/profile.d /etc/profile.d

# Download the tar files and explode them in one go to save
# image space
RUN mkdir -p /opt \
 && curl -L ${JAVA_URL} | tar -xzC /opt \
 && ln -s $(ls -d /opt/zulu*) /opt/java

# End of Installation section

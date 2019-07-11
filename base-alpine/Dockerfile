FROM alpine:3.9

MAINTAINER WoQ - Way of Quality GmbH - Blended 

ENV USER=blended
ENV UID=5000	
ENV GID=5000

# Installation section
ADD files/profile.d /etc/profile.d  

RUN apk --no-cache add \
    curl \
    git \
    openssh-client \
    ca-certificates \
    bash

RUN mkdir -p /home/$USER

RUN addgroup -g "${GID}" "${USER}" \
 && adduser \
  --disabled-password \
  --gecos "" \
  --home /home/"$USER" \
  --ingroup "$USER" \
  --no-create-home \
  --uid "$UID" \
  "$USER" \
 && chown -R $USER:$GROUP /home/$USER


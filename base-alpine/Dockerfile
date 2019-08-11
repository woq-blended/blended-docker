# We use alpine 3.9 for now. With 3.10 we do see strange errors when we use
# Selenium and Google Chrome for head less browser testing
FROM alpine:3.9

MAINTAINER WoQ - Way of Quality GmbH - Blended Team

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

RUN apk --no-cache add tar

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

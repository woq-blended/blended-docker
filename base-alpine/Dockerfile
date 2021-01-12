# We use alpine 3.9 for now. With 3.10 we do see strange errors when we use
# Selenium and Google Chrome for head less browser testing
FROM alpine:3.12.1

LABEL maintainer="WoQ - Way of Quality GmbH - Blended Team"

ARG USER=blended

# Installation section
ADD files/profile.d /etc/profile.d

RUN apk --no-cache add \
    curl \
    git \
    openssh-client \
    ca-certificates \
    sudo \
    tar \
    bash \
 && mkdir -p /usr/local/bin

COPY files/bin /usr/local/bin

#RUN addgroup "${USER}" \
# && adduser \
#  --disabled-password \
#  --gecos "" \
#  --home /home/"$USER" \
#  --ingroup "$USER" \
#  --no-create-home \
#  "$USER" \
# && adduser $USER root \
# && chown -R $USER:$GROUP /home/$USER


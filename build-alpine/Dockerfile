# The basic image to run Blended containers
FROM atooni/zulu-8-alpine:1.0

MAINTAINER Andreas Gies 

ENV SBT_URL=https://piccolo.link/sbt-1.2.8.tgz

# Installation section
ADD files/profile.d /etc/profile.d  

# Download the tar files and explode them in one go to save 
# image space 
RUN mkdir -p /opt \
 && curl -L ${SBT_URL} | tar -xzC /opt

RUN apk --no-cache add \
    nodejs \
    npm

RUN npm install -g yarn \
 && apk --no-cache add \
   chromium-chromedriver \
   chromium \
   harfbuzz \
   nss \
   freetype \
   ttf-freefont

# End of Installation section


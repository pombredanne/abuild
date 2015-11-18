FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV REPODEST /package

ENV PACKAGER Thomas Boerger <thomas@webhippie.de>
ENV PACKAGER_PRIVKEY /etc/apk/keys/abuild.rsa

RUN apk update && \
  apk add \
    alpine-sdk \
    sudo \
    sprunge && \
  adduser \
    -G abuild \
    -g "Alpine Package Builder" \
    -s /bin/bash \
    -D builder && \
  rm -rf /var/cache/apk/*

VOLUME ["/build", "/package"]
ADD rootfs /

WORKDIR /build
USER builder
ENTRYPOINT ["/entrypoint.sh"]

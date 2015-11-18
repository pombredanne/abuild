#!/bin/bash
set -e

sudo chown \
  -R builder \
  /build \
  /package

sudo chown \
  builder \
  ${PACKAGER_PRIVKEY}

if [ "${1}" = "bash" ]
then
  exec $@
else
  abuild-apk \
    update

  exec abuild -r $@
fi

#!/usr/bin/env bash

set -e

ar x --output /tmp/dkms "/tmp/dkms/${PACKAGE_NAME}_${PACKAGE_VERSION}~buster_all.deb"
tar xf /tmp/dkms/data.tar.xz -C /tmp/dkms

if [ ! -d modules ]; then
  mkdir "${GITHUB_WORKSPACE}/modules"
fi

cp -R "/tmp/dkms/usr/src/unipi-${PACKAGE_VERSION}~bullseye/"* "${GITHUB_WORKSPACE}/modules"
rm "${GITHUB_WORKSPACE}/modules/dkms.conf"

#!/usr/bin/env bash

set -e

ar x --output /tmp/dkms "/tmp/dkms/${KERNEL_PACKAGE_NAME}_${KERNEL_VERSION}~bullseye_all.deb"
tar xf /tmp/dkms/data.tar.xz -C /tmp/dkms

if [ ! -d modules ]; then
  mkdir "${GITHUB_WORKSPACE}/modules"
fi

cp -R "/tmp/dkms/usr/src/unipi-${KERNEL_VERSION}/"* "${GITHUB_WORKSPACE}/modules"
rm "${GITHUB_WORKSPACE}/modules/dkms.conf"

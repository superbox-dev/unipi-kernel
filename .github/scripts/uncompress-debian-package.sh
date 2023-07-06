#!/usr/bin/env bash

set -e

ar x --output /tmp/dkms "${REPO_URL}/${PACKAGE_NAME}_${PACKAGE_VERSION}_all.deb"
tar xf /tmp/dkms/data.tar.xz -C /tmp/dkms

if [ ! -d modules ]; then
  mkdir "${GITHUB_WORKSPACE}/modules"
fi

mv "/tmp/dkms/usr/src/unipi-${PACKAGE_VERSION}/"* "${GITHUB_WORKSPACE}/modules"

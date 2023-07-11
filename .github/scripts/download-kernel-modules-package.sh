#!/usr/bin/env bash

set -e

mkdir -pv /tmp/dkms
wget -P /tmp/dkms "${KERNEL_REPO_URL}/${KERNEL_PACKAGE_NAME}_${KERNEL_VERSION}_all.deb"

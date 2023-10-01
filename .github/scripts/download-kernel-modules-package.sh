#!/usr/bin/env bash

set -e

mkdir -pv /tmp/dkms
wget -P /tmp/dkms "${REPO_URL}/${PACKAGE_NAME}_${PACKAGE_VERSION}_buster_all.deb"

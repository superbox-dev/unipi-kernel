#!/usr/bin/env bash

set -e

mkdir -pv /tmp/overlays
wget -P /tmp/overlays "${REPO_URL}/${PACKAGE_NAME}_${PACKAGE_VERSION}~bullseye-neuron_armhf.deb"



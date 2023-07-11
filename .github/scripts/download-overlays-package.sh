#!/usr/bin/env bash

set -e

mkdir -pv /tmp/overlays
wget -P /tmp/overlays "${OVERLAYS_REPO_URL}/${OVERLAYS_PACKAGE_NAME}_${OVERLAYS_VERSION}~bullseye-neuron_armhf.deb"



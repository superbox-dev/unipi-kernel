#!/usr/bin/env bash

set -e

ar x --output /tmp/overlays "/tmp/overlays/${OVERLAYS_PACKAGE_NAME}_${OVERLAYS_VERSION}~bullseye-neuron_armhf.deb"
tar xf /tmp/overlays/data.tar.xz -C /tmp/overlays

if [ ! -d overlays ]; then
  mkdir "${GITHUB_WORKSPACE}/overlays"
fi

apt-get install device-tree-compiler

for f in /tmp/overlays/*.dtbo; do dtc -I dtb -O dts $f -o /tmp/overlays`basename $f .dtbo`.dts; done

rm -rf "${GITHUB_WORKSPACE}/overlays/*.dts"
cp -R /tmp/overlays/*.dts "${GITHUB_WORKSPACE}/overlays"

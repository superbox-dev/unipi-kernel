#!/usr/bin/env bash

set -e

ar x --output /tmp/overlays "/tmp/overlays/${PACKAGE_NAME}_${PACKAGE_VERSION}~bullseye-neuron_armhf.deb"
tar xf /tmp/overlays/data.tar.xz -C /tmp/overlays

if [ ! -d overlays ]; then
  mkdir "${GITHUB_WORKSPACE}/overlays"
fi

sudo apt-get install device-tree-compiler

mkdir -pv /tmp/overlays-src

for f in /tmp/overlays/boot/overlays/*.dtbo; do dtc -I dtb -O dts $f -o /tmp/overlays-src/`basename $f .dtbo`.dts; done

rm -rf "${GITHUB_WORKSPACE}/overlays/*.dts"
cp -R /tmp/overlays-src/*.dts "${GITHUB_WORKSPACE}/overlays"

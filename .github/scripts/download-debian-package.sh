#!/usr/bin/env bash

set -e

mkdir -pv /tmp/dkms
wget -O /tmp/dkms "https://repo.unipi.technology/debian/pool/main/u/unipi-kernel-modules/unipi-kernel-modules-dkms_${INPUT_DKMS-VERSION}_all.deb"

ls -la /tmp-dkms

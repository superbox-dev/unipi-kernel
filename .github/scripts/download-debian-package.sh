#!/usr/bin/env bash

set -e

mkdir -pv /tmp/dkms
wget -P /tmp/dkms "${{ env.REPO_URL }}/${{ env.PACKAGE_NAME }}_${{ inputs.package-version }}_all.deb"

ls -la /tmp-dkms

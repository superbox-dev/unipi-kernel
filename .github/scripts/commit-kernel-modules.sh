#!/usr/bin/env bash

set -e

git config --local user.email "github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"
git add modules
git commit -m "Unipi Kernel Modules v${PACKAGE_VERSION}"
git tag "v${PACKAGE_VERSION}"


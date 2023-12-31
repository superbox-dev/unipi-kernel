#!/usr/bin/env bash

set -e

git config --local user.email "github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"

if [ "$(git status --porcelain | wc -l)" -gt "0" ]; then
    git add modules
    git commit -m "Unipi kernel modules v${PACKAGE_VERSION}"
fi


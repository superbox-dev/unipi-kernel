#!/usr/bin/env bash

set -e

git config --local user.email "github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"

if ! [ "$(git tag -l "v${PACKAGE_VERSION}")" ]; then
    if [ "$(git status --porcelain | wc -l)" -gt "0" ]; then
        git add modules
        git commit -m "Unipi Kernel Modules v${PACKAGE_VERSION}"
    fi

    git tag "v${PACKAGE_VERSION}"
fi



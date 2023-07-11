#!/usr/bin/env python
import sys
from os import environ

try:
    package_version: float = float(environ["PACKAGE_VERSION"])
except ValueError:
    print(f'Wrong package version: {environ["PACKAGE_VERSION"]}')
    sys.exit(1)

if package_version <= float(environ["LATEST_TAG"][1:]):
    print(f'{environ["PACKAGE_VERSION"]} <= {environ["LATEST_TAG"][1:]}')
    sys.exit(1)

#!/usr/bin/env python
import sys
from os import environ

try:
    package_version: float = float(environ["KERNEL_VERSION"])
except ValueError:
    print(f'Wrong package version: {environ["KERNEL_VERSION"]}')
    sys.exit(1)

if package_version <= float(environ["LATEST_TAG"][1:]):
    print(f'{environ["KERNEL_VERSION"]} <= {environ["LATEST_TAG"][1:]}')
    sys.exit(1)

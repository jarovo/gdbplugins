#!/bin/bash

set -x -e

dnf install -y python3-pip git gdb

pip install --prefix / /tmp/gdbplugins

tests/run-pry.sh

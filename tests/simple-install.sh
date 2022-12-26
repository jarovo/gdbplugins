#!/bin/bash

set -x -e

function install_apt {
    apt-get update
    apt-get install -y python3-pip git gdb pry
}

function install_dnf {
    dnf install -y python3-pip git gdb rubygem-pry
}

install_dnf || install_apt

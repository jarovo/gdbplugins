# The gdbplugins.

[![github-action](https://github.com/jarovo/gdbplugins/actions/workflows/github-action.yml/badge.svg)]

Python plugins for gdb making debugging various languages with gdb easy.


## Installation

On RHEL and Fedora, this will make it happen system-wide:

    sudo pip install --prefix / gdbplugins

Note that to install, we cannot use virtualenv as gdb does not load the virtualenv.

Next time you start gdb, the plugins should load.

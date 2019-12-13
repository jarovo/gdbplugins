#!/usr/bin/python3
# -*- coding: utf-8 -*-
import pkg_resources


def load_plugins():
    print("Loading gdb python plugins")

    discovered_plugins = {
        entry_point.name: entry_point.load()
        for entry_point in pkg_resources.iter_entry_points("gdb.plugins")
    }

    for name, plugin_entry_point in discovered_plugins.items():
        plugin_entry_point()
        print("plugin {} loaded".format(name))


if __name__ == "__main__":
    load_plugins()
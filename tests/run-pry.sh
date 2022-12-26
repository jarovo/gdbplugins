#!/bin/bash

set -e

OUTPUT="$(gdb)"
for plugin_name in python ruby; do
    echo "$OUTPUT" | grep -o "$plugin_name" || exit 1
done

gdb --init-eval-command=pry | grep 'Executing pry in the inferior'

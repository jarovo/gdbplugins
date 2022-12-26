#!/bin/bash

gdb --init-eval-command=pry | tee /dev/stderr | grep 'Executing pry in the inferior'

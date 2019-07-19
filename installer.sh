#!/usr/bin/env bash

## Clone the repo
cd /tmp
git clone https://github.com/darioseidl/git-standup.git --depth=1 || { echo >&2 "Clone failed with $?"; exit 1; }
cd git-standup
make install || { echo >&2 "Make install failed with $?"; exit 1; }
rm -rf /tmp/git-standup

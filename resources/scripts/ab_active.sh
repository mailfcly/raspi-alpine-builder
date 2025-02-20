#!/bin/sh
set -e

# get current partition index
current_idx=$(rdev | sed 's#/dev/mmcblk0p\([^ ]*\).*#\1#')

if [ "$current_idx" -eq 2 ]; then
    echo "Active partition: A"
else
    echo "Active partition: B"
fi

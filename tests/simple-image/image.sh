#!/bin/sh

# check net and apk working in build environment (installs inside build environment)
apk add --no-cache m4

# check net and apk working inside chroot
# add extra packages inside chroot so correct arch and destination is used
chroot_exec apk add --no-cache python3

install "$INPUT_PATH"/hello.sh "$ROOTFS_PATH"/etc/local.d/hello.start

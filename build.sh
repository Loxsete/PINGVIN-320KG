#!/bin/sh
cd rootfs
find . -print0 | cpio --null -o --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ..

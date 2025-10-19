#!/bin/sh
cd ~/pingvin320kg/rootfs
find . -print0 | cpio --null -o --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ~/pingvin320kg/

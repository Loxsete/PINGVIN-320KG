#!/bin/sh
find . -print0 | cpio --null -o --format=newc | gzip -9 > ../initramfs.cpio.gz

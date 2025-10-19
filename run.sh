#!/bin/sh
qemu-system-x86_64 \
    -kernel linux-6.6.1/arch/x86/boot/bzImage \
    -initrd initramfs.cpio.gz \
    -append "console=tty0" \
    -m 512M \
    -smp 2 \
    -enable-kvm \
    -netdev user,id=net0 \
    -device e1000,netdev=net0

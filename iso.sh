#!/bin/sh
set -e

ISO_DIR=iso
mkdir -p $ISO_DIR/boot/grub

cp linux-6.6.1/arch/x86/boot/bzImage $ISO_DIR/boot/
cp initramfs.cpio.gz $ISO_DIR/boot/

cat > $ISO_DIR/boot/grub/grub.cfg <<EOF
set default=0
set timeout=3

menuentry "Pingvin 320KG OS" {
    linux /boot/bzImage console=tty0
    initrd /boot/initramfs.cpio.gz
}
EOF

grub-mkrescue -o pingvin320kg.iso $ISO_DIR

echo "=== ISO created: pingvin320kg.iso ==="

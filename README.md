# PINGVIN-320KG

A tiny Linux-based system for messing around with minimal setups. It's got a custom `rootfs`, BusyBox for basic tools, my own `mpkg` package manager, and some networking chops. Perfect for lightweight or embedded stuff.

## What's Inside

- **rootfs/**: The heart of the system with all the essentials:
  - `init`: Boots the system.
  - `bin/`: BusyBox utils (`telnetd`, `tftp`, etc.), `mpkg`, and `fastfetch` for system info.
  - `etc/`: Configs like `fstab`, `motd`, and `mpkg.conf`.
  - `lib/`, `lib64/`, `usr/`: Libraries and extra tools.
  - Standard dirs: `dev/`, `proc/`, `sys/`, `tmp/`, etc.
- **busybox-1.36.1/**: Source for BusyBox (v1.36.1).
- **linux-6.6.1/**: Linux kernel source (v6.6.1).
- **initramfs.cpio.gz**: Compressed initramfs for booting.
- **build.sh**: Rebuilds the initramfs.
- **run.sh**: Fires up the system (works with QEMU).

## Features

- `mpkg`: My custom package manager. Check available packages at [mpkg-server](https://github.com/Loxsete/mpkg-server).
- `fastfetch`: Quick system info tool.
- Networking works out of the box.

## How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/Loxsete/PINGVIN-320KG.git
   cd PINGVIN-320KG
   chmod +x run.sh
   run.sh
   ```

   

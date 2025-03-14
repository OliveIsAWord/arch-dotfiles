# Base packages critical for booting and maintaining the system.

AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage efibootmgr # Linux user-space application to modify the EFI Boot Manager
AddPackage grub # GNU GRand Unified Bootloader (2)
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage networkmanager # Network connection manager and user applications
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer

# Include a tiny text editor. Better safe than sorry.
AddPackage nano # Pico editor clone with enhancements

# System configuration
CreateFileOf /etc/locale.conf "LANG=en_US.UTF-8"
CreateFileOf /etc/vconsole.conf "KEYMAP=us"
CopyFile /etc/login.defs

# OpenSSH configuration
CopyFile /etc/ssh/sshd_config # use a high port number for WAN

# Systemd initialization (no longer tracked)
CopyFile /etc/systemd/timesyncd.conf
#SystemdEnable --type user wireplumber /usr/lib/systemd/user/wireplumber.service

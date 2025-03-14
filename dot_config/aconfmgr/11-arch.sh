# Special tools for maintaining my Arch system with paru and aconfmgr.

AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper
AddPackage --foreign paru-debug # Detached debugging symbols for paru

# Pacman configuration
CopyFile /etc/pacman.conf

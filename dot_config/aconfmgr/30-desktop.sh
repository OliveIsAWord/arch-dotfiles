# Graphical desktop environment.

# We use LightDM as our display manager. I am probably imminently removing this in favor of directly starting our window manager from the shell upon TTY login.
AddPackage lightdm # A lightweight display manager
AddPackage lightdm-gtk-greeter # GTK+ greeter for LightDM
CopyFile /etc/lightdm/lightdm.conf

# Trying out Niri, we'll see if it's any good
AddPackage niri # A scrollable-tiling Wayland compositor

# Common important Wayland apps.
AddPackage fuzzel # Application launcher for wlroots based Wayland compositors
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
# TODO: We are missing a lot! Notifications, portals, and other important DE components.

# Applications.
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator
AddPackage firefox # Fast, Private & Safe Web Browser

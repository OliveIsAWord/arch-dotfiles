# Graphical desktop environment.

# Trying out Niri, we'll see if it's any good
AddPackage niri # A scrollable-tiling Wayland compositor

# Common important Wayland apps.
AddPackage fuzzel # Application launcher for wlroots based Wayland compositors
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
AddPackage xwayland-satellite # Xwayland outside your Wayland
AddPackage mako # Lightweight notification daemon for Wayland

# Applications.
AddPackage alacritty # A cross-platform, GPU-accelerated terminal emulator
AddPackage firefox # Fast, Private & Safe Web Browser
AddPackage --foreign activate-linux # The "Activate Windows" watermark ported to Linux with Xlib and cairo in C

# Shell and terminal utilities.

# We use fish, which has served me well thus far.
AddPackage fish # Smart and user friendly shell intended mostly for interactive use

# And our text editor of choice is Kakoune, because a foxgirl named Xenia demanded it.
AddPackage kakoune # Multiple-selection, UNIX-flavored modal editor

# Chezmoi manages our system configuration globally.
AddPackage chezmoi # Manage your dotfiles across multiple machines

# Unsurprising essentials
AddPackage keychain # A front-end to ssh-agent, allowing one long-running ssh-agent process per system, rather than per login
AddPackage less # A terminal based program for viewing text files
AddPackage man-db # A utility for reading man pages
AddPackage sudo # Give certain users the ability to run some commands as root
AddPackage tmux # Terminal multiplexer

# Some additional utilities that I'm enjoying
AddPackage bat # Cat clone with syntax highlighting and git integration
AddPackage dust # A more intuitive version of du in rust
AddPackage entr # Run arbitrary commands when files change
AddPackage eza # A modern replacement for ls (community fork of exa)
AddPackage github-cli # The GitHub CLI
AddPackage hyfetch # Neofetch with LGBTQ+ pride flags!
AddPackage inferno # A Rust port of FlameGraph
AddPackage perf # Linux kernel performance auditing tool
AddPackage rust-script # Run Rust files and expressions as scripts without any setup or compilation
AddPackage tokei # A blazingly fast CLOC (Count Lines Of Code) program
AddPackage tree # A directory listing program displaying a depth indented list of files

# A list of filepaths not to track

# Only track /etc
IgnorePath '/boot/**'
IgnorePath '/var/**'
IgnorePath '/lost+found'
IgnorePath '/swapfile'

# ... except for /usr/bin/sh
IgnorePath '/usr'
IgnorePath '/usr/bin/groupmems'
IgnorePath '/usr/lib/**'

# Ignore backup files
IgnorePath '**/*-'
IgnorePath '**/*~'

# Certain /etc contents that are not useful to track
IgnorePath '/etc/ssl'
IgnorePath '/etc/pacman.d'
IgnorePath '/etc/ca-certificates'
IgnorePath '/etc/fonts'

# Ignore systemd units, make the user enable them manually
IgnorePackage systemd
IgnorePath /etc/systemd/system
IgnorePath /etc/systemd/user

# Specific /etc files that should not be tracked.
IgnorePath /etc/.pwd.lock
IgnorePath /etc/.updated
IgnorePath /etc/adjtime
IgnorePath /etc/gshadow
IgnorePath /etc/ld.so.cache
IgnorePath /etc/locale.gen
IgnorePath /etc/localtime
IgnorePath /etc/machine-id 444
IgnorePath /etc/pacman.d/mirrorlist # annoying
IgnorePath /etc/resolv.conf
IgnorePath /etc/shadow
IgnorePath /etc/shells
IgnorePath /etc/group
IgnorePath /etc/NetworkManager/system-connections # contains wifi network names and passwords in plaintext lol
IgnorePath /etc/mkinitcpio.d/linux.preset
IgnorePath /etc/os-release
IgnorePath /etc/passwd
IgnorePath /etc/subgid
IgnorePath /etc/subuid
IgnorePath /etc/ssh
IgnorePath /etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf
IgnorePath /etc/ssh/sshd_config.d/20-systemd-userdb.conf

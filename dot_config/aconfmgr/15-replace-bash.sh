# Our possibly misguided attempt to change the /usr/bin/sh implementation from Bash to Dash.

AddPackage dash # POSIX compliant shell that aims to be as small as possible
CreateLink /usr/bin/sh /usr/bin/dash

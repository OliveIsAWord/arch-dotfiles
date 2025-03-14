# Helper commands for system configuration.

#
# CreateFileOf DST-PATH CONTENTS
# Create a file with a text string as its contents.
function CreateFileOf() {
	local dst_file="$1"
	local contents="$2"
	echo "$contents" > "$(CreateFile $dst_file)"
}

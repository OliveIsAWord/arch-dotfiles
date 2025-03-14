# Hardware specific options.

echo "Building for $HOSTNAME..."

if [[ $HOSTNAME == "thresholde" ]]
then
	# AMD CPU
	AddPackage amd-ucode # Microcode update image for AMD CPUs
elif [[ $HOSTNAME == "vespera" ]]
then
	echo TODO
else
	echo "Unrecognized host" $HOSTNAME
	return 1
fi

CreateFileOf /etc/hostname "$HOSTNAME"

local input_file_dir="$config_dir"/files
for loci_file in $(find "$input_file_dir" -type f -name "*.$HOSTNAME");
do
	local loci_file="${loci_file#"$input_file_dir"}"
	local loci_target="${loci_file%.*}"
	CopyFileTo $loci_file $loci_target
done

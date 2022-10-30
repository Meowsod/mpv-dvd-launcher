#!/bin/bash

if [ -z "$1" ]; then
	echo "no input file"
else
	file="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
	if [[ "${file##*.}" == "iso" || "${file##*.}" == "ISO" ]]; then
		mpv dvd:// --dvd-device="$1"
	else
		echo "filetype not == iso"
		echo "$file"
	fi
fi

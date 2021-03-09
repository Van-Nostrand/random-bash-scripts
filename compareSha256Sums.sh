#!/usr/bin/env bash
#this script computes a files sha256 checksum and compares it to the communicated correct sum
#it takes the path of the file to be scrutinized and the correct sha256 checksum as arguments

sum1=$(sha256sum "$1")

diff <(echo $sum1 | cut -f 1 -d " ") <(echo "$2" | cut -f 1 -d " ")

# the $? character holds the value of the last computed function, in this case, the diff function above
if [ $? -ne 0 ]; then
	echo "the checksums differ"
else
	echo "the checksums match"
fi

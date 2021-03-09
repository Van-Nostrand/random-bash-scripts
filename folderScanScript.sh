#!/usr/bin/env bash

dir1="$1"
dir2="$2"
#diff -q "$dir1" "$dir2"  > testdiff.md

#for each folder in dir1
for firstdir in $(find "$dir1" -maxdepth 1 -type d)
do
	#check each folder in dir2
	for seconddir in $(find "$dir2" -maxdepth 1 -type d)
	do
		echo "echoing firstdir $firstdir"
		echo "echoing seconddir $seconddir"
		#compare them
		#if they're the same, print them
		if ["$firstdir" = "$seconddir"]; then
				echo "$firstdir $seconddir"
		fi
	done
done

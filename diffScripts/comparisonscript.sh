#!/usr/bin/env bash
#this script takes one argument, stores it in a variable, and then prints it
dir1="$1"
dir2="$2"
diff -q "$dir1" "$dir2"  > testdiff.md

#!/usr/bin/env bash
# parsing parts of a path

var1="/media/vannostrand/exfatBackup/Documents/Ableton/"

# using the string, reverse it, cut from the beginning, reverse again.
# this gives the last two parts of the path
echo "${var1}" | rev | cut -d "/" -f2-3 | rev

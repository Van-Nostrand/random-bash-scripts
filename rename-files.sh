#!/bin/bash

# take the search text
read -p "Enter the search text:" search

# Take the replace text
read -p "Enter the replace text:" replace

# I have two rename functions on this computer, below references the Arch friendly one
# rename all files that match with the pattern
$(renamexm -s/$search/$replace/ *)
echo "The files are renamed."

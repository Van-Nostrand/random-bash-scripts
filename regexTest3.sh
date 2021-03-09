#!/usr/bin/env bash
# takes a string as argument and prints the last character in it
var1="$1"

echo "${var1:(${#var1} - 1)}"

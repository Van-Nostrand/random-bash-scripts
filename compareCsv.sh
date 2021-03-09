#!/usr/bin/env bash
# takes two text (or csv) files as arguments, outputs a csv file of differences
arg1=$1
arg2=$2
#grep -v -f $arg1 $arg2 > "${arg1}-${arg2}-diff.csv"
diff $arg1 $arg2 > "${arg1}-${arg2}-diff.md"
# difference="$(diff $arg1 $arg2)"

# echo $difference > "difference.csv"

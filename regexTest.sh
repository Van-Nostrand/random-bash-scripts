#!/usr/bin/env bash
# doesn't work

string="/first/second/third/fourth/fifth/"

for (( i=0 ; i< ; i++ ))
do
  echo "${string:0:$i}"
done

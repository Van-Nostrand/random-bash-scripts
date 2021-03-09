#!/usr/bin/env bash

string="here is a stupid string"
delim=" "

# for (( i=0 ; i<${#string}; i++)); do
#   echo "${string:$i:1}"
# done

for (( i=0 ; i<${#string}; i++))
do
  if [ "${string:$1:1}" != "${delim:0:1}" ]
  then
    echo "${string:$i:1}"
    # echo "not a space"
  fi
done

#!/usr/bin/env bash
# if the path ends with a slash, trims the last slash, then returns last two path portions with slash changed to underscore

var1="/first/second/third/fourth/fifth/"

read -r -a name1 <<< "$( echo "${var1}" | rev | cut -d '/' -f1-3 | rev )"

if [ "${name1:${#name1}-1:${#name1}}" = "/" ]
then
  name1=`echo "${name1%*/}" | tr "/" "_" `
else
  name1=`echo "$name1" | tr "/" "_" `
fi

echo "$name1"

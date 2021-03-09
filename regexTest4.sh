#!/usr/bin/env bash
# trims the last slash, returns last two path portions with slash changed to underscore

var1="/first/second/third/fourth/fifth/"

read -r -a name1 <<< "$( echo "${var1}" | rev | cut -d '/' -f1-3 | rev )"

name1=`echo "${name1%*/}" | tr "/" "_" `

echo "$name1"

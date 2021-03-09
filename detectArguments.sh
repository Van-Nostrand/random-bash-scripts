#!/usr/bin/env bash

if [ "$1" != "" ]; then
    echo "Positional parameter 1 contains something"
else
    echo "Positional parameter 1 is empty"
fi

if [ $# -gt 0 ]; then
	echo "the command line contains $# arguments"
else
	echo "the command line contains no arguments"
fi

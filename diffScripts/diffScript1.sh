#!/usr/bin/env bash

arg1=$1
arg2=$2

diff --brief --recursive "$arg1" "$arg2" > "${arg1}-${arg2}.md"

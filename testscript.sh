#!/usr/bin/env bash
#this script takes one argument, stores it in a variable, and then prints it
var1="$1"
myfunc(){
	echo $var1
}

myfunc


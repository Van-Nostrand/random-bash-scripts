#!/bin/bash
#this searches through a folder called src recursively and matches all files ending with so and copies them to a folder called dst
#alter this to take arguments
find src/ -type f | grep -i so$ | xargs -i cp {} dst

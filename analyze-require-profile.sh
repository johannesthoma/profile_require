#!/bin/bash
grep seconds | sed 's/^require \([a-zA-Z0-9_-./@]*\): \([.0-9]*\) seconds/\2 \1/g' | sort -n > profile-require-sorted 
awk 'BEGIN { sum=0 } { sum+=$1 } END { print sum }' profile-require-sorted

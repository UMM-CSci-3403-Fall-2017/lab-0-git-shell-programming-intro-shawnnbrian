#!/bin/bash

# Create a bash script that takes two arguments: a number and directory.

num=$1 
dir=$2


# Now extract and uncompress the .tgz file to the given directory (dir).

tar -xf NthPrime.tgz -C $dir

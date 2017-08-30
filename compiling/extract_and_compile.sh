#!/bin/bash

# Create a bash script that takes two arguments: a number and directory.

num=$1 
dir=$2


# Now extract and uncompress the .tgz file to the given directory (dir).

tar -xf NthPrime.tgz -C $dir


# Go to $dir and runs the .c files

cd $dir/NthPrime
gcc -o NthPrime main.c nth_prime.c
./NthPrime $1


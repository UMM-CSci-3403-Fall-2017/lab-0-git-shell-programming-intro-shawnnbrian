#!/bin/bash

#This bash script takes two args: name of tar archive and name of scratch directory
name=$1
dir=$2

# Extract .tgz file to the scratch directory (dir)

tar -xf big_dir.tgz -C $dir


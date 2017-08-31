#!/bin/bash

#This bash script takes two args: name of tar archive and name of scratch directory
name=$1
dir=$2

# Extract .tgz file to the scratch directory (dir)
tar -xf $name -C $dir

# Create variables for the working directory and the tar archive without the .xxx
home=$(pwd)
filename="${name%.*}"

# Change to the extracted directory 
cd $dir/$filename

# Remove all files with the line "DELETE ME!" and change to scratch($dir) 
rm $(grep -l "DELETE ME!" *)
cd ..

# Create a tarball from ($name) and move it to the top directory
tar -zcf cleaned_$filename.tgz $filename
mv cleaned_$filename.tgz $home


#!/usr/bin/bash

# First install git-lfs
git lfs install

# Need to give no of file formats
read -p "Enter the number of file formats: " nof

# Now count that file format and track that lfs data
ffor=0
while [ $ffor -eq $nof ]
do
read -p "Enter File Format: " fil
git lfs track *.$fil
let ffor++
done

# Need to give folder location
read -p "Enter the number of Folder Location: " nofo

# Now count and track that lfs data
fofor=0
while [ $fofor -eq $nofo ]
do
read -p "Enter Folder Location: "fol
git lfs track $fol/*
done
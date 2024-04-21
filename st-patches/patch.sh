#!/bin/bash

directory="./patches"

if [ -d "$directory" ]; then 
	for file in "$directory"/*; do
		if [ -f "$file" ]; then
			echo "File: $file"
			patch -Np1 -i $file
			echo "Applied patch for $file"
		fi
	done
else
	echo "Empty directory"

fi


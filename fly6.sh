#!/bin/bash

folders=*/

for folder in $folders ; do
       	for file in $folder*.mkv ; do
       		echo $file
	done       
done       

#!/bin/bash
dir=$(date +%Y%m%d) 
n=1
max=10
while [ "$n" -lt "$max" ]; do
	mkdir $dir$n
	f=0
	while [ "$f" -lt "$max" ] ; do
		echo "This is a testfile" 1>$dir$n"/test"$f".mkv"
	       	f=`expr $f + 1`
       done	       
	n=`expr $n + 1`		
done


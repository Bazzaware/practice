#!/bin/bash


sourcefolder="/run/media/bazza/Fly6/DCIM/"
destfolder="$HOME/Videos/fly6"

#Functions
checkfolder() {
if [ ! -d "$1" ] 
then
	echo "DIR MISSING is $1"  
	exit 1
fi
}
checkfolder "$sourcefolder"
checkfolder "$destfolder" 

rsync --ignore-existing  --update -raz --progress $sourcefolder $desstfolder

#for folder in $sourcefolder ; do
       	#for file in $folder*.mkv ; do
       	#	newfile=$file | awk '{split($0,a,"/"); print a[1]"-"a[2]}'
	#	echo "$newfile "
	#done       
#done       

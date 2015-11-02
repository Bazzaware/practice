#!/bin/bash
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root" 2>&1
	exit 1
fi

filename='1280x1024.jpg'
destination="/usr/wall-paper"
url="file:///"$destination"/"$filename
mon=`date +%b`
if [ ! -d "$destination" ]; then
	mkdir $destination
fi

cd $destination
if [ ! -d $destination'/'$mon.jpg ]; then
	mv $destination'/'$filename $destination'/'$mon'.jpg'
else
	rm -f $destination'/'$filename
fi

wget http://www.ordnancesurvey.co.uk/docs/wallpaper-images/$filename
gsettings set org.gnome.desktop.background picture-uri $url

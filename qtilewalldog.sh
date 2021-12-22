#!/bin/bash
checksize()
{

# path to you wallpaper goes here-> must be identical to the path given in the config.py
filename=/your/wallpaper/here.png

filesize=$(du -b "$filename")
while true;     do
        sleep 10
        filesizechange=$(du -b "$filename")
        if [ "$filesize" = "$filesizechange" ]; then
                echo "still the same"
                else
                xdotool key super+control+r
           exit 
        fi

done
}
checksize


#!/bin/bash


checksize()
{
filename=/home/ingo/Bilder/lxqt.png

filesize=$(du -b "$filename")
while true;     do
        sleep 10
        filesizechange=$(du -b "$filename")
        if [ "$filesize" -lt "$filesizechange" ]; then
                xdotool key super+strg+r
           exit 
        fi

done
}
checksize


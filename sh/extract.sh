#!/bin/bash

TODOVIDEOPATH=/root/vatic/data/videos_in
DONEVIDEOPATH=/root/vatic/data/videos_out
FRAMEPATH=/root/vatic/data/frames_in_huangchang_20160615

mkdir -p $DONEVIDEOPATH

cd /root/vatic
for i in $( ls $TODOVIDEOPATH); do
    sufix=${i%.*} 
    mkdir -p "$FRAMEPATH/$sufix"
    turkic extract $TODOVIDEOPATH/$i "$FRAMEPATH/$sufix" --no-resize 
    mv $TODOVIDEOPATH/$i $DONEVIDEOPATH/
done

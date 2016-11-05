#!/bin/bash

FRAMEPATH=/root/vatic/data/frames_in_yinan_20160526/

cd /root/vatic
for i in $( ls $FRAMEPATH ); do
    sufix=${i%.*} 
    echo ${sufix}
    mkdir -p /root/vatic/data/po_2_20160527/$sufix
    turkic dump $sufix  --output  /root/vatic/data/po_2_20160527/$sufix/output.txt --merge --merge-threshold 0.5 
done

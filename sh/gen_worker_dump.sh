#!/bin/bash

FRAMEPATH=/root/vatic/data/frames_in_haoyuan_20160521/

cd /root/vatic
for i in $( ls $FRAMEPATH ); do
    sufix=${i%.*} 
    echo ${sufix}
    mkdir -p /root/vatic/data/20160524_po_1_haoyuan/$sufix
    turkic dump $sufix  --output  /root/vatic/data/20160524_po_1_haoyuan/$sufix/output.txt 
done

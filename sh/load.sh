#!/bin/bash

FRAMEPATH=/root/vatic/data/frames_in_huangchang_20160615

cd /root/vatic
for i in $( ls $FRAMEPATH ); do
    sufix=${i%.*} 
    echo ${sufix}
    turkic load $sufix $FRAMEPATH/$i car_like ~ignore_region bus_truck_like ~ignore_region  ped ~ignore_region cyclist ~ignore_region  --blow-radius 0 --skip 15  --offline 
done

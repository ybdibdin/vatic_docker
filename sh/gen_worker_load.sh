#!/bin/bash

for i in `seq 392  604`
do
echo $i
path="/root/vatic/data/workload_luyou_20160602/$i"
mkdir -p $path
turkic visualize car_rear_20160419  $path  --nofill 1  --id  $i  --renumber
done

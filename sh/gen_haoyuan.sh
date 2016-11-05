#!/bin/bash

while read line
do
result=`turkic find --id ${line}`
ids=`echo $result | grep -o "id=[0-9]*" | awk -F'=' '{ print $2 }'`
for id in $ids
do
path="/root/vatic/data/haoyuan_modified/${id}"
mkdir -p ${path}
turkic visualize $line $path --nofill 1 --id ${id} --labels  --renumber
done
done<haoyuan.list

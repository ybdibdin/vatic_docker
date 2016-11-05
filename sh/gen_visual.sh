#!/bin/bash

for i in `seq 1 6`
do
echo $i
path="/root/vatic/data/luyou/wudaokou_20160525_$i/"
mkdir -p $path
turkic visualize  wudaokou_20160525_$i $path  --merge  --renumber
cd $path
ffmpeg -i %d.jpg -vcodec mpeg4 $i.avi
cd -
done

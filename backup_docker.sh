#!/bin/bash

instance=`docker ps  | grep vatic | wc -l`
if [ $instance -gt 0 ]
then
    docker save jldowns/vatic-docker > /data/xvdb1/backup_vatic_docker/vatic_image.tar 
    docker export e04b9dc1de70 > /data/xvdb1/backup_vatic_docker/vatic_container.tar
fi



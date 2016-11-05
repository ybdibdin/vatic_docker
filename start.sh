#!/bin/bash 
docker run -v /home/zhaoming/vatic/data:/root/vatic/data -p 8080:80 -p 8443:443 --name my_vatic  jldowns/vatic-docker  sh /root/vatic/start_and_block.sh


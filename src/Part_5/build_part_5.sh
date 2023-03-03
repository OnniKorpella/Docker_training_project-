#!/bin/bash
. ../../code-samples/colors.sh

docker build -t nginx:images_5_part .  
docker run -it -p 80:81 --name part_5 -d nginx:images_5_part /bin/bash

open http://localhost:80/
export DOCKER_CONTENT_TRUST=1

dockle --accept-key=NGINX_GPGKEY nginx:images_5_part

echo -e "${COLOR[5]}Press any key to finish and delete images and containers${RES}"
read -sn1 -p "..."; echo


docker images 
docker stop part_5
docker rm part_5
docker rmi -f nginx:images_5_part

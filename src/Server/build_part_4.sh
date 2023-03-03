#!/bin/bash
. ../../code-samples/colors.sh


docker build -t nginx .  
docker run -it -p 80:81 --name part_4 -d nginx /bin/bash

open http://localhost:80/

echo -e "${COLOR[5]}Press any key to finish and delete images and containers${RES}"
read -sn1 -p "..."; echo
docker stop part_4
docker rm part_4
# docker rmi -f nginx

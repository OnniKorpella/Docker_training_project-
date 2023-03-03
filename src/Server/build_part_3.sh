#!/bin/bash
. ../../code-samples/colors.sh

docker pull nginx
docker run -d -p 81:81 --name part_3 nginx
docker cp ./hello_part_3.c part_3:etc/nginx/
docker cp ./nginx/nginx.conf part_3:/etc/nginx/
docker exec part_3 apt-get update
docker exec part_3 apt-get install -y gcc spawn-fcgi libfcgi-dev
docker exec part_3 gcc /etc/nginx/hello_part_3.c -o /etc/nginx/webserver -l fcgi
docker exec part_3 spawn-fcgi -p 8080 /etc/nginx/webserver
docker exec part_3 nginx -s reload
open http://localhost:81/

echo -e "${COLOR[5]}Press any key to finish and delete images and containers${RES}"
read -sn1 -p "..."; echo
docker stop part_3
docker rm part_3
# docker rmi -f nginx

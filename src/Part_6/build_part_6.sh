#!/bin/bash
cd ../
docker-compose build
docker-compose up
# open http://localhost:80/

docker ps
docker images 
docker stop src_net_2_1 part_5
docker rm src_net_2_1 part_5
docker rmi src_net nginx
docker ps
docker images 


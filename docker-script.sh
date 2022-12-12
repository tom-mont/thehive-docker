#! /bin/bash
mkdir ~/docker-compose1
cd ~/docker-compose1

sudo snap install docker
sudo snap install curl

sudo docker-compose up -d

curl -XPOST -H 'Authorization: Bearer ***API*KEY***' -H 'Content-Type: application/json' http://172.19.0.1:9000/api/case -d '{
  "title": "My first case",
  "description": "This case has been created by my custom script"
}'


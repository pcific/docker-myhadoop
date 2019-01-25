#!/bin/sh

echo kill java ...
sudo kill `ps -ef|grep java|grep hadoop|grep -v grep|awk '{print $2}'`
sleep 3
echo -------------------------
ps -ef|grep java|grep hadoop|grep -v grep 
echo -------------------------
echo docker stop ...
docker stop node11 node12 node13 node14
docker stop node10
echo -------------------------
docker ps -a
echo -------------------------


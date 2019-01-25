#!/bin/sh

docker exec -d  node10 sbin/yarn-daemon.sh start resourcemanager
sleep 5 
docker exec -d  node11 sbin/yarn-daemon.sh start nodemanager
docker exec -d  node12 sbin/yarn-daemon.sh start nodemanager
docker exec -d  node13 sbin/yarn-daemon.sh start nodemanager
docker exec -d  node14 sbin/yarn-daemon.sh start nodemanager







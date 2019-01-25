#!/bin/sh
# docker exec -it node10 bin/hdfs namenode -format 
docker exec -d  node10 sbin/hadoop-daemon.sh start namenode
sleep 5
docker exec -d  node11 sbin/hadoop-daemon.sh start datanode
docker exec -d  node12 sbin/hadoop-daemon.sh start datanode
docker exec -d  node13 sbin/hadoop-daemon.sh start datanode
docker exec -d  node14 sbin/hadoop-daemon.sh start datanode



